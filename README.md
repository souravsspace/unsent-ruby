# Unsent Ruby SDK

Official Ruby SDK for the [Unsent API](https://unsent.dev) - Send transactional emails with ease.

## Prerequisites

- [Unsent API key](https://app.unsent.dev/dev-settings/api-keys)
- [Verified domain](https://app.unsent.dev/domains)
- Ruby 3.0 or higher

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unsent'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install unsent
```

## Usage

### Basic Setup

```ruby
require 'unsent'

client = Unsent::Client.new('un_xxx')
```

### Environment Variables

You can also set your API key using environment variables:

```ruby
# Set UNSENT_API_KEY in your environment
# Then initialize without passing the key
client = Unsent::Client.new
```

### Sending Emails

#### Simple Email

```ruby
data, error = client.emails.send({
  to: 'user@example.com',
  from: 'no-reply@yourdomain.com',
  subject: 'Welcome',
  html: '<strong>Hello!</strong>'
})

if error
  puts "Error: #{error}"
else
  puts "Email sent! ID: #{data['id']}"
end
```

#### With Attachments and Scheduling

```ruby
require 'time'

data, error = client.emails.create({
  to: 'user@example.com',
  from: 'no-reply@yourdomain.com',
  subject: 'Report',
  text: 'See attached.',
  attachments: [
    {
      filename: 'report.txt',
      content: 'SGVsbG8gd29ybGQ=' # base64
    }
  ],
  scheduledAt: (Time.now + 600).iso8601 # 10 minutes from now
})
```

#### Batch Send

```ruby
emails = [
  {
    to: 'a@example.com',
    from: 'no-reply@yourdomain.com',
    subject: 'A',
    html: '<p>A</p>'
  },
  {
    to: 'b@example.com',
    from: 'no-reply@yourdomain.com',
    subject: 'B',
    html: '<p>B</p>'
  }
]

data, error = client.emails.batch(emails)
puts "Sent #{data['emails'].length} emails" if data
```

#### Idempotent Retries

To prevent duplicate emails when retrying failed requests, you can provide an idempotency key.

```ruby
data, error = client.emails.send({
  to: 'user@example.com',
  from: 'no-reply@yourdomain.com',
  subject: 'Welcome',
  html: '<strong>Hello!</strong>'
}, {
  idempotency_key: 'unique-key-123'
})
```

### Managing Emails

#### Get Email

```ruby
email, error = client.emails.get('email_123')
puts "Email status: #{email['status']}" if email
```

#### Update Schedule

```ruby
data, error = client.emails.update('email_123', {
  scheduledAt: (Time.now + 3600).iso8601 # 1 hour from now
})
```

#### Cancel Scheduled Email

```ruby
data, error = client.emails.cancel('email_123')
puts 'Email cancelled successfully' if data
```

### Contacts

#### Create Contact

```ruby
data, error = client.contacts.create('book_123', {
  email: 'user@example.com',
  firstName: 'Jane',
  metadata: {
    plan: 'pro'
  }
})
```

#### Get Contact

```ruby
contact, error = client.contacts.get('book_123', 'contact_456')
```

#### Update Contact

```ruby
data, error = client.contacts.update('book_123', 'contact_456', {
  firstName: 'John',
  metadata: {
    plan: 'enterprise'
  }
})
```

#### Upsert Contact

```ruby
data, error = client.contacts.upsert('book_123', 'contact_456', {
  email: 'user@example.com',
  firstName: 'Jane'
})
```

#### Delete Contact

```ruby
data, error = client.contacts.delete('book_123', 'contact_456')
```

### Campaigns

#### Create Campaign

```ruby
data, error = client.campaigns.create({
  name: 'Welcome Series',
  subject: 'Welcome!',
  html: '<p>Thanks for joining us!</p>',
  from: 'welcome@yourdomain.com',
  contactBookId: 'book_123'
})
```

#### Schedule Campaign

```ruby
data, error = client.campaigns.schedule('campaign_123', {
  scheduledAt: '2024-12-01T10:00:00Z'
})
```

#### Pause and Resume

```ruby
# Pause
data, error = client.campaigns.pause('campaign_123')

# Resume
data, error = client.campaigns.resume('campaign_123')
```

### Domains

#### List Domains

```ruby
domains, error = client.domains.list
domains.each do |domain|
  puts "Domain: #{domain['domain']}, Status: #{domain['status']}"
end if domains
```

#### Create Domain

```ruby
data, error = client.domains.create({
  domain: 'yourdomain.com'
})
```

#### Verify Domain

```ruby
data, error = client.domains.verify(123)
puts "Verification status: #{data['status']}" if data
```

## Error Handling

By default, the SDK raises `Unsent::HTTPError` for non-2xx responses:

```ruby
begin
  data, error = client.emails.get('email_123')
rescue Unsent::HTTPError => e
  puts "HTTP #{e.status_code}: #{e.error['message']}"
end
```

To handle errors as return values instead:

```ruby
client = Unsent::Client.new('un_xxx', raise_on_error: false)

data, error = client.emails.get('email_123')
if error
  puts "Error: #{error['message']}"
else
  puts "Success!"
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/souravsspace/unsent-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
