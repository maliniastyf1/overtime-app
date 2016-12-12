# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- Post -> date:date, rationale:text
- User -> Devise
- AdminUser -> STI (Single Table Inheritance)

## Features:
- Approval Workflow
- Sms sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting

## Refactor TODOS:
- Add full name to users in index view
- Refactor user asscociation integration test in post_spec