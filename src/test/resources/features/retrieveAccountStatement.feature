Feature: Retrieve Account Statement Amount

  Scenario Outline: I'm client I want to retrieve my account statement.
    Given I can not retrieve account statement when account id <accountId> is null
    Then  I got Exception "BadRequest"

    Examples:
      | accountId |
      | ""        |
      | null      |


  Scenario Outline: I'm client I want to retrieve my account statement.
    Given I can not retrieve account statement when account end date is before start date, account id <accountId>, start date <startDate>, end date <endDate>
    Then  I got Exception "BadRequest"

    Examples:
      | accountId | startDate              | endDate                |
      | 123456    | 2023-01-01T00:00Z[UTC] | 2021-01-01T00:00Z[UTC] |


  Scenario Outline: I'm client I want to retrieve my account statement.
    Given I can not retrieve account statement when page or size invalid, account id <accountId>, page <page>
    Then  I got Exception "BadRequest"

    Examples:
      | accountId | page |
      | 123456    | -1   |
      | 123456    | 1    |
      | 123456    | 1    |

  Scenario Outline: I'm client I want to retrieve my account statement.
    Given I retrieve my account statement, account id <accountId>, page <page>, start date <startDate>, end date <endDate>
    Then  I got Exception "BadRequest"

    Examples:
      | accountId | page | startDate         | endDate           |
      | 123456    | 0    |                   |                   |
      | 123456    | 0    |                   | 2025-01-01T00:00Z |
      | 123456    | 0    | 2020-01-01T00:00Z |                   |
      | 123456    | 1    | 2020-01-01T00:00Z | 2025-01-01T00:00Z |