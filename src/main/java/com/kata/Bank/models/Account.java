package com.kata.Bank.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.List;

/**
 * Account class, save the account details
 *
 * @author Sabrine.zouaghi
 */
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Account {

  /**
   * Account Identifier
   */
  private String id;

  /**
   * Current Balance
   */
  private int currentBalance;

  /**
   * User Identifier
   */
  private String idUser;

  /**
   * {@link List} of {@link AccountStatement}
   */
  List<AccountStatement> accountStatements;
}