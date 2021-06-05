{-# OPTIONS_GHC -w #-}
module Main (main) where
import Scanner
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,72) ([0,0,0,32,1024,63488,120,32,58336,31745,32828,1935,61936,15872,30,0,0,4096,0,2,15484,0,0,2,7742,51136,63491,120,3871,0,0,0,0,0,0,0,0,768,8192,0,8,64,0,1,1,7742,0,32768,0,3871,1024,31744,60,16,0,16384,0,4,1024,0,57344,483,128,16384,0,4,0,1024,32772,0,3871,1024,0,2,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Seq","Exp","Declaration","ThenBody","'='","'+'","'-'","'*'","'('","')'","'['","']'","num","var","let","case","else","%eof"]
        bit_start = st * 21
        bit_end = (st + 1) * 21
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..20]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (4) = happyGoto action_3
action_0 _ = happyReduce_2

action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (12) = happyShift action_4
action_3 (21) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyShift action_6
action_4 (9) = happyShift action_7
action_4 (10) = happyShift action_8
action_4 (11) = happyShift action_9
action_4 (12) = happyShift action_10
action_4 (16) = happyShift action_11
action_4 (17) = happyShift action_12
action_4 (18) = happyShift action_13
action_4 (19) = happyShift action_14
action_4 (5) = happyGoto action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (13) = happyShift action_22
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_6
action_6 (9) = happyShift action_7
action_6 (10) = happyShift action_8
action_6 (11) = happyShift action_9
action_6 (12) = happyShift action_10
action_6 (16) = happyShift action_11
action_6 (17) = happyShift action_12
action_6 (18) = happyShift action_13
action_6 (19) = happyShift action_14
action_6 (5) = happyGoto action_21
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_6
action_7 (9) = happyShift action_7
action_7 (10) = happyShift action_8
action_7 (11) = happyShift action_9
action_7 (12) = happyShift action_10
action_7 (16) = happyShift action_11
action_7 (17) = happyShift action_12
action_7 (18) = happyShift action_13
action_7 (19) = happyShift action_14
action_7 (5) = happyGoto action_20
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_6
action_8 (9) = happyShift action_7
action_8 (10) = happyShift action_8
action_8 (11) = happyShift action_9
action_8 (12) = happyShift action_10
action_8 (16) = happyShift action_11
action_8 (17) = happyShift action_12
action_8 (18) = happyShift action_13
action_8 (19) = happyShift action_14
action_8 (5) = happyGoto action_19
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (11) = happyShift action_9
action_9 (12) = happyShift action_10
action_9 (16) = happyShift action_11
action_9 (17) = happyShift action_12
action_9 (18) = happyShift action_13
action_9 (19) = happyShift action_14
action_9 (5) = happyGoto action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (11) = happyShift action_9
action_10 (12) = happyShift action_10
action_10 (16) = happyShift action_11
action_10 (17) = happyShift action_12
action_10 (18) = happyShift action_13
action_10 (19) = happyShift action_14
action_10 (5) = happyGoto action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_10

action_12 _ = happyReduce_11

action_13 (12) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (11) = happyShift action_9
action_15 (12) = happyShift action_10
action_15 (16) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (5) = happyGoto action_29
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyGoto action_28
action_16 _ = happyReduce_13

action_17 (13) = happyShift action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (11) = happyShift action_9
action_18 (12) = happyShift action_10
action_18 (16) = happyShift action_11
action_18 (17) = happyShift action_12
action_18 (18) = happyShift action_13
action_18 (19) = happyShift action_14
action_18 (5) = happyGoto action_26
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (11) = happyShift action_9
action_19 (12) = happyShift action_10
action_19 (16) = happyShift action_11
action_19 (17) = happyShift action_12
action_19 (18) = happyShift action_13
action_19 (19) = happyShift action_14
action_19 (5) = happyGoto action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (10) = happyShift action_8
action_20 (11) = happyShift action_9
action_20 (12) = happyShift action_10
action_20 (16) = happyShift action_11
action_20 (17) = happyShift action_12
action_20 (18) = happyShift action_13
action_20 (19) = happyShift action_14
action_20 (5) = happyGoto action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (11) = happyShift action_9
action_21 (12) = happyShift action_10
action_21 (16) = happyShift action_11
action_21 (17) = happyShift action_12
action_21 (18) = happyShift action_13
action_21 (19) = happyShift action_14
action_21 (5) = happyGoto action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_1

action_23 _ = happyReduce_8

action_24 _ = happyReduce_5

action_25 _ = happyReduce_6

action_26 _ = happyReduce_7

action_27 _ = happyReduce_9

action_28 (13) = happyShift action_31
action_28 (14) = happyShift action_32
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (13) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_36
action_30 (7) = happyGoto action_35
action_30 _ = happyReduce_16

action_31 (12) = happyShift action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (17) = happyShift action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_6
action_34 (9) = happyShift action_7
action_34 (10) = happyShift action_8
action_34 (11) = happyShift action_9
action_34 (12) = happyShift action_10
action_34 (16) = happyShift action_11
action_34 (17) = happyShift action_12
action_34 (18) = happyShift action_13
action_34 (19) = happyShift action_14
action_34 (5) = happyGoto action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_4

action_36 (12) = happyShift action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (8) = happyShift action_6
action_37 (9) = happyShift action_7
action_37 (10) = happyShift action_8
action_37 (11) = happyShift action_9
action_37 (12) = happyShift action_10
action_37 (16) = happyShift action_11
action_37 (17) = happyShift action_12
action_37 (18) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (5) = happyGoto action_42
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (13) = happyShift action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (8) = happyShift action_6
action_39 (9) = happyShift action_7
action_39 (10) = happyShift action_8
action_39 (11) = happyShift action_9
action_39 (12) = happyShift action_10
action_39 (16) = happyShift action_11
action_39 (17) = happyShift action_12
action_39 (18) = happyShift action_13
action_39 (19) = happyShift action_14
action_39 (5) = happyGoto action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (13) = happyShift action_44
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_3

action_42 (13) = happyShift action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (15) = happyShift action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_12

action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (10) = happyShift action_8
action_46 (11) = happyShift action_9
action_46 (12) = happyShift action_10
action_46 (16) = happyShift action_11
action_46 (17) = happyShift action_12
action_46 (18) = happyShift action_13
action_46 (19) = happyShift action_14
action_46 (5) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (13) = happyShift action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (15) = happyShift action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (14) = happyShift action_51
action_49 (7) = happyGoto action_50
action_49 _ = happyReduce_16

action_50 _ = happyReduce_15

action_51 (12) = happyShift action_37
action_51 (20) = happyShift action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_6
action_53 (9) = happyShift action_7
action_53 (10) = happyShift action_8
action_53 (11) = happyShift action_9
action_53 (12) = happyShift action_10
action_53 (16) = happyShift action_11
action_53 (17) = happyShift action_12
action_53 (18) = happyShift action_13
action_53 (19) = happyShift action_14
action_53 (5) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (13) = happyShift action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (15) = happyShift action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_14

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (happy_var_2 : happy_var_1
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_0  4 happyReduction_2
happyReduction_2  =  HappyAbsSyn4
		 ([]
	)

happyReduce_3 = happyReduce 7 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 5 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Case happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Plus happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Minus happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Times happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Equal happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn5
		 (Num happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happyReduce 7 6 happyReduction_12
happyReduction_12 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((Declaration happy_var_3 happy_var_5) : happy_var_1
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_0  6 happyReduction_13
happyReduction_13  =  HappyAbsSyn6
		 ([]
	)

happyReduce_14 = happyReduce 14 7 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((Then happy_var_3 happy_var_5) : (Else happy_var_5) : []
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 9 7 happyReduction_15
happyReduction_15 ((HappyAbsSyn7  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((Then happy_var_3 happy_var_5) : happy_var_9
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_0  7 happyReduction_16
happyReduction_16  =  HappyAbsSyn7
		 ([]
	)

happyNewToken action sts stk [] =
	action 21 21 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenEq -> cont 8;
	TokenPlus -> cont 9;
	TokenMinus -> cont 10;
	TokenTimes -> cont 11;
	TokenOpenRound -> cont 12;
	TokenClosedRound -> cont 13;
	TokenOpenBox -> cont 14;
	TokenClosedBox -> cont 15;
	TokenNum happy_dollar_dollar -> cont 16;
	TokenVar happy_dollar_dollar -> cont 17;
	TokenLet -> cont 18;
	TokenCase -> cont 19;
	TokenElse -> cont 20;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 21 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
calc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Exp
    = Let [Declaration] Exp
    | Case Exp [ThenBody]
    | Plus Exp Exp
    | Minus Exp Exp
    | Times Exp Exp
    | Equal Exp Exp
    | Num Int
    | Var String
    deriving Show

data Declaration
    = Declaration String Exp
    deriving Show

data ThenBody
    = Then Exp Exp
    | Else Exp
    deriving Show

main = do
    s <- getContents
    print (calc (lexer s) [])
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
