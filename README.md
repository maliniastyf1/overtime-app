# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- Post -> date:date, rationale:text
- User -> Devise
- AdminUser -> STI (Single Table Inheritance)

## Features:
- Approval Workflow
- Sms sending -> link to approval or overtime input
- x Administrate admin dashboard
- Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- Icons from Front Awsome
- x Update the styles for forms
## Refactor TODOS:

- Refactor user asscociation integration test in post_spec