//
// Created by egl on 7/20/19.
//

#include <gtest/gtest.h>
#include <memory>
#include <ostream>

using namespace std;
struct BankAccount{
    int balance;
    BankAccount():balance{0}{

    }
    explicit BankAccount(const int balance) : balance{balance} {

    }
    void deposit(int amount){
        balance+=amount;
    }

    bool withdraw(int amount){
        if(balance<amount) return false;
        balance-=amount;
        return true;
    }
};



struct BankAccountTest:testing::Test{
    unique_ptr<BankAccount> account;
    BankAccountTest(){
        account= make_unique<BankAccount>();
    }
    virtual ~BankAccountTest(){

    }
};




TEST_F(BankAccountTest,BankAccountStartsEmpty){
    EXPECT_EQ(0,account->balance);
}

TEST_F(BankAccountTest,CanDepositMoney){
    account->deposit(100);
    EXPECT_EQ(100,account->balance);
}


TEST(AccountTest,BankAccountStartsEmpty){
    BankAccount account;
    EXPECT_EQ(0,account.balance);
}

struct account_state{
    friend ostream &operator<<(ostream &os, const account_state &state) {
        os << "initial_balance: " << state.initial_balance << " withdraw_amount: " << state.withdraw_amount
           << " final_balance: " << state.final_balance << " success: " << state.success;
        return os;
    }

    int initial_balance;
    int withdraw_amount;
    int final_balance;
    bool success;
};

struct WithdrawAccountTest: BankAccountTest,testing::WithParamInterface<account_state>{
    WithdrawAccountTest(){
        account->balance=GetParam().initial_balance;
    }
};

TEST_P(WithdrawAccountTest, FinalBalance){
    auto as=GetParam();
    auto success=account->withdraw(as.withdraw_amount);
    EXPECT_EQ(as.final_balance,account->balance);
    EXPECT_EQ(as.success,success);
}

INSTANTIATE_TEST_SUITE_P(Default, WithdrawAccountTest,testing::Values(account_state{100,50,50,true},
                                                                      account_state{100,200,100,false}));

int main(int argc, char* argv[]){
    testing::InitGoogleTest(&argc,argv);
    return RUN_ALL_TESTS();
}