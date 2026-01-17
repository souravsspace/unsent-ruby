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

## Email Management

### List Emails

Retrieve a paginated list of emails with optional filters:

```ruby
data, error = client.emails.list(
  page: 1,
  limit: 10,
  startDate: '2024-01-01',
  endDate: '2024-01-31',
  domainId: 'domain_123'
)

# Support for multiple domain IDs
data, error = client.emails.list(domainId: ['domain_1', 'domain_2'])
```

### Email Statistics

```ruby
# Get complaints
data, error = client.emails.get_complaints(page: 1, limit: 10)

# Get bounces
data, error = client.emails.get_bounces(page: 1, limit: 10)

# Get unsubscribes
data, error = client.emails.get_unsubscribes(page: 1, limit: 10)

# Get events for a specific email
events, error = client.emails.get_events('email_123', page: 1, limit: 10)
if events
  events['data'].each do |event|
    puts "Event: #{event['type']} at #{event['timestamp']}"
  end
end
```

## Domains

Manage your sending domains and retrieve domain-specific analytics.

### Domain Analytics & Statistics

```ruby
# Get analytics for a specific domain
data, error = client.domains.get_analytics('domain_123', days: 30)
puts "Total sent: #{data['sent']}, Delivered: #{data['delivered']}" if data

# Get analytics with custom date range
data, error = client.domains.get_analytics(
  'domain_123',
  startDate: '2024-01-01',
  endDate: '2024-01-31'
)

# Get domain statistics
stats, error = client.domains.get_stats('domain_123', days: 7)
puts "Bounce rate: #{stats['bounceRate']}%" if stats

# Get stats with custom date range
stats, error = client.domains.get_stats(
  'domain_123',
  startDate: '2024-01-01',
  endDate: '2024-01-15'
)
```

### Domain Management

#### List Domains

```ruby
domains, error = client.domains.list
domains.each do |domain|
  puts "Domain: #{domain['domain']}, Status: #{domain['status']}"
end if domains
```

#### Create Domain


```ruby
data, error = client.contact_books.create(
  name: 'Newsletter Subscribers',
  emoji: '📧'
)
```

### List Contact Books

```ruby
books, error = client.contact_books.list
books.each { |book| puts book['name'] }
```

### Get Contact Book

```ruby
book, error = client.contact_books.get('book_123')
```

### Update Contact Book

```ruby
data, error = client.contact_books.update('book_123', name: 'Updated Name')
```

### Delete Contact Book

```ruby
data, error = client.contact_books.delete('book_123')
```

## Contacts

### List Contacts

```ruby
data, error = client.contacts.list('book_123',
  page: 1,
  limit: 10,
  search: 'john@example.com'
)
```

## Campaigns

### List Campaigns

```ruby
campaigns, error = client.campaigns.list
```

## Analytics

Get insights into your email sending performance.

### Overall Analytics

```ruby
data, error = client.analytics.get
puts "Sent: #{data['sent']}, Delivered: #{data['delivered']}"
```

### Time Series Data

```ruby
data, error = client.analytics.get_time_series(
  days: 30,
  domain: 'yourdomain.com'
)
```

### Reputation Score

```ruby
data, error = client.analytics.get_reputation(domain: 'yourdomain.com')
puts "Reputation Score: #{data['score']}"
```

## Templates

Manage reusable email templates.

### Create Template

```ruby
data, error = client.templates.create(
  name: 'Welcome Email',
  subject: 'Welcome to {{companyName}}!',
  html: '<h1>Welcome {{firstName}}!</h1>'
)
```

### List Templates

```ruby
templates, error = client.templates.list
```

### Get Template

```ruby
template, error = client.templates.get('template_123')
```

### Update Template

```ruby
data, error = client.templates.update('template_123',
  subject: 'Updated Subject'
)
```

### Delete Template

```ruby
data, error = client.templates.delete('template_123')
```

## Suppressions

Manage your email suppression list.

### List Suppressions

```ruby
data, error = client.suppressions.list(
  page: 1,
  limit: 10,
  reason: 'MANUAL',
  search: 'user@'
)
```

### Add to Suppression List

```ruby
data, error = client.suppressions.add(
  email: 'blocked@example.com',
  reason: 'MANUAL'
)
```

### Remove from Suppression List

```ruby
data, error = client.suppressions.delete('blocked@example.com')
```

## API Keys

Manage your API keys programmatically.

### List API Keys

```ruby
keys, error = client.api_keys.list
```

### Create API Key

```ruby
data, error = client.api_keys.create(
  name: 'Production Key',
  permission: 'SENDING'
)
puts "New key: #{data['key']}"
```

### Delete API Key

```ruby
data, error = client.api_keys.delete('key_123')
```

## Webhooks

> **Note**: Webhooks are currently a future feature and are documented here for reference.

Configure webhooks to receive real-time notifications.

### List Webhooks

```ruby
webhooks, error = client.webhooks.list
```

### Create Webhook

```ruby
data, error = client.webhooks.create(
  url: 'https://yourdomain.com/webhooks',
  events: ['email.sent', 'email.delivered', 'email.bounced']
)
```

### Update Webhook

```ruby
data, error = client.webhooks.update('webhook_123',
  url: 'https://yourdomain.com/updated-webhook'
)
```

### Delete Webhook

```ruby
data, error = client.webhooks.delete('webhook_123')
```

## Settings

Retrieve account settings.

```ruby
settings, error = client.settings.get
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/souravsspace/unsent-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
