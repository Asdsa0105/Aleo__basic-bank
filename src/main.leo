// The 'basic_bank' program.
program basic_bank.aleo {


    record Token {

        owner : address,
        gates : u64,
        amount : u64,
    }


    mapping balances : field => u64;


    transition issue (owner : address, amount : u64) -> token {

        assert_eq(self.caller, aleo1t0uer3jgtsgmx5tq6x6f9ecu8tr57rzzfnc2dgmcqldceal0ls9qf6st7a);

        return Token {

            owner : owner,
            gates : 0u64,
            amount : amount
        }
    }



    transition main(public a: u32, b: u32) -> u32 {


        let c: u32 = a + b;
        return c;
    }
}
