# Effilab technical test for Ruby developers
This repository provided the basic configuration to focus on the API and Ruby itself rather than on how to connect to Adwords.

## Exercise
We are providing you a working `main.rb` file with some calls to the Adwords API and console outputs of fetched data.

The purpose of this app is to print to console some Adwords data:
- Each row is formatted on a given format and must be respected
  - eg. `443327128 "1.01 - Nom" [ENABLED] AdGroups:11`
- Campaigns must be ordered by ascending Id
- The last output should print the mean number of AdGroups per Campaign
  - eg. `Mean number of AdGroups per Campaign: 41`

### Our expectations
- The given code already meet the specifications, but it could be greatly improved in many ways
- You need to refactor `main.rb`
  - It should be easier to understand and maintain
  - You can create as many classes, modules and files as needed
  - Keep in mind we'll want to add some new functionalities, change the output, use another Adwords service, etc.
  - Performance matters and we'll look at how you managed to improve it
- You need to setup and provide a test suite using RSpec 3
- There are many possibilities for code optimization and performance improvements so do your best

**You will present us your work and should justify your choices**

### What do we look at ?
- The quality of your code
- The quality of your commits
- _One commit_ repository won't be accepted
- Technical choices

### How to start ?
- Run `sh ./run.sh` to setup `adwords_api.yml`.
- With the documentation we provided you, set the following values:
  - `oauth2_client_id`
  - `oauth2_client_secret`
  - `developer_token`
  - `client_customer_id`
- Run `sh ./run.sh`. It should successfully run.
- Start to work on it.
- Once you're done, send us a mail with the link.

## Resources
- Adwords URL: https://adwords.google.com
- Ruby library: https://github.com/googleads/google-api-ads-ruby/tree/master/adwords_api
- Adwords API Documentation:
  - operators: https://developers.google.com/adwords/api/docs/reference/v201806/CampaignService.Predicate.Operator
- Useful link:
  - get campaigns: https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/examples/v201806/basic_operations/get_campaigns.rb
