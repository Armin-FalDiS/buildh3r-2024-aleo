program armin_token.aleo {
    record ArminToken {
        owner: address,
        amount: u64,
    }

    transition main(amount: u64) -> ArminToken {
        return ArminToken {
            owner: self.caller,
            amount,
        };
    }

    transition transfer(token: ArminToken, to: address, amount:u64) -> (ArminToken, ArminToken) {
        return (
            ArminToken {
                owner: token.owner,
                amount: token.amount - amount,
            },
            ArminToken {
                owner: to,
                amount: amount,
            }
        );
    }

    transition balance_of(token: ArminToken) -> u64 {
        return token.amount;
    }
}
