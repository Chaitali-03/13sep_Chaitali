//Write a C++ program to implement a class called Bank Account that has private member variables for account number and balance. Include member functions to deposit and withdraw money from the account.

#include <iostream>
#include <string>
using namespace std;

class BankAccount {
  private: string accountNumber;
  double balance;

  public:
	// Constructor
    BankAccount(const string & accNum, double initialBalance): accountNumber(accNum), balance(initialBalance) {}

  // Member function to deposit money
  void deposit(double amount) {
    balance += amount;
    cout << "Deposit successful. Current balance: " << balance << endl;
  }

  // Member function to withdraw money
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      cout << "Withdrawal successful. Current balance: " << balance << std::endl;
    } else {
      cout << "Insufficient balance. Cannot withdraw." << std::endl;
    }
  }
};

int main() {
  // Create a bank account object
  string sacno = "SB-123";
  double Opening_balance, deposit_amt, withdrawal_amt;
  Opening_balance = 1000;
  cout << "A/c. No." << sacno << " Balance: " << Opening_balance << endl;

  BankAccount account(sacno, 1000.0);

  // Deposit money into the account
  deposit_amt = 1500;
  cout << "Deposit Amount: " << deposit_amt << endl;
  account.deposit(deposit_amt);

  // Withdraw money from the account
  withdrawal_amt = 750;
  cout << "Withdrawl Amount: " << withdrawal_amt << endl;
  account.withdraw(withdrawal_amt);

  // Attempt to withdraw more money than the balance
  withdrawal_amt = 1800;
  cout << "Attempt to withdrawl Amount: " << withdrawal_amt << endl;
  account.withdraw(withdrawal_amt);

  return 0;
}

