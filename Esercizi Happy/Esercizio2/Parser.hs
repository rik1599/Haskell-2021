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
happyExpList = Happy_Data_Array.listArray (0,95) ([43008,16386,57365,1,1024,8320,5120,1,61440,0,680,5440,43520,20480,30725,16,256,2080,0,18304,0,16,0,47,0,0,1,8,64,512,0,1504,4096,32772,32,260,2080,0,18304,48128,0,138,1104,8832,5120,1,0,0,0,48,384,0,0,0,3,24,0,0,0,0,0,12,96,0,0,0,0,6,48,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Exp","CurlyExp","BoxExp","LiteralExp","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","num","%eof"]
        bit_start = st * 19
        bit_end = (st + 1) * 19
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..18]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_3
action_0 (14) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_3
action_1 (14) = happyShift action_4
action_1 (16) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_8
action_2 (9) = happyShift action_9
action_2 (10) = happyShift action_10
action_2 (11) = happyShift action_11
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (18) = happyShift action_20
action_3 (7) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_17
action_4 (18) = happyShift action_18
action_4 (6) = happyGoto action_16
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (12) = happyShift action_13
action_5 (14) = happyShift action_14
action_5 (18) = happyShift action_15
action_5 (5) = happyGoto action_12
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_8

action_7 (8) = happyShift action_8
action_7 (9) = happyShift action_9
action_7 (10) = happyShift action_10
action_7 (11) = happyShift action_11
action_7 (19) = happyAccept
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (12) = happyShift action_3
action_8 (14) = happyShift action_4
action_8 (16) = happyShift action_5
action_8 (18) = happyShift action_6
action_8 (4) = happyGoto action_42
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (12) = happyShift action_3
action_9 (14) = happyShift action_4
action_9 (16) = happyShift action_5
action_9 (18) = happyShift action_6
action_9 (4) = happyGoto action_41
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (12) = happyShift action_3
action_10 (14) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (18) = happyShift action_6
action_10 (4) = happyGoto action_40
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_3
action_11 (14) = happyShift action_4
action_11 (16) = happyShift action_5
action_11 (18) = happyShift action_6
action_11 (4) = happyGoto action_39
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_34
action_12 (9) = happyShift action_35
action_12 (10) = happyShift action_36
action_12 (11) = happyShift action_37
action_12 (17) = happyShift action_38
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (18) = happyShift action_20
action_13 (7) = happyGoto action_33
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_17
action_14 (18) = happyShift action_18
action_14 (6) = happyGoto action_32
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_15

action_16 (8) = happyShift action_27
action_16 (9) = happyShift action_28
action_16 (10) = happyShift action_29
action_16 (11) = happyShift action_30
action_16 (15) = happyShift action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (18) = happyShift action_20
action_17 (7) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_21

action_19 (8) = happyShift action_21
action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (13) = happyShift action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_26

action_21 (18) = happyShift action_20
action_21 (7) = happyGoto action_57
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_20
action_22 (7) = happyGoto action_56
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (18) = happyShift action_20
action_23 (7) = happyGoto action_55
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (18) = happyShift action_20
action_24 (7) = happyGoto action_54
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_7

action_26 (8) = happyShift action_21
action_26 (9) = happyShift action_22
action_26 (10) = happyShift action_23
action_26 (11) = happyShift action_24
action_26 (13) = happyShift action_53
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_17
action_27 (18) = happyShift action_18
action_27 (6) = happyGoto action_52
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_17
action_28 (18) = happyShift action_18
action_28 (6) = happyGoto action_51
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_17
action_29 (18) = happyShift action_18
action_29 (6) = happyGoto action_50
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_17
action_30 (18) = happyShift action_18
action_30 (6) = happyGoto action_49
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_6

action_32 (8) = happyShift action_27
action_32 (9) = happyShift action_28
action_32 (10) = happyShift action_29
action_32 (11) = happyShift action_30
action_32 (15) = happyShift action_48
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_21
action_33 (9) = happyShift action_22
action_33 (10) = happyShift action_23
action_33 (11) = happyShift action_24
action_33 (13) = happyShift action_47
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_13
action_34 (14) = happyShift action_14
action_34 (18) = happyShift action_15
action_34 (5) = happyGoto action_46
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_13
action_35 (14) = happyShift action_14
action_35 (18) = happyShift action_15
action_35 (5) = happyGoto action_45
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (12) = happyShift action_13
action_36 (14) = happyShift action_14
action_36 (18) = happyShift action_15
action_36 (5) = happyGoto action_44
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (12) = happyShift action_13
action_37 (14) = happyShift action_14
action_37 (18) = happyShift action_15
action_37 (5) = happyGoto action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_5

action_39 _ = happyReduce_4

action_40 _ = happyReduce_3

action_41 (10) = happyShift action_10
action_41 (11) = happyShift action_11
action_41 _ = happyReduce_2

action_42 (10) = happyShift action_10
action_42 (11) = happyShift action_11
action_42 _ = happyReduce_1

action_43 _ = happyReduce_12

action_44 _ = happyReduce_11

action_45 (10) = happyShift action_36
action_45 (11) = happyShift action_37
action_45 _ = happyReduce_10

action_46 (10) = happyShift action_36
action_46 (11) = happyShift action_37
action_46 _ = happyReduce_9

action_47 _ = happyReduce_14

action_48 _ = happyReduce_13

action_49 _ = happyReduce_19

action_50 _ = happyReduce_18

action_51 (10) = happyShift action_29
action_51 (11) = happyShift action_30
action_51 _ = happyReduce_17

action_52 (10) = happyShift action_29
action_52 (11) = happyShift action_30
action_52 _ = happyReduce_16

action_53 _ = happyReduce_20

action_54 _ = happyReduce_25

action_55 _ = happyReduce_24

action_56 (10) = happyShift action_23
action_56 (11) = happyShift action_24
action_56 _ = happyReduce_23

action_57 (10) = happyShift action_23
action_57 (11) = happyShift action_24
action_57 _ = happyReduce_22

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (PlusExp happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MinusExp happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TimesExp happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (DivideExp happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (CurlyExp happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (BoxExp happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RoundExp happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (NumExp happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (PlusCurlyExp happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (MinusCurlyExp happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TimesCurlyExp happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (DivideCurlyExp happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (BoxInCurlyExp happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (RoundInCurlyExp happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn5
		 (NumInCurlyExp happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (PlusBoxExp happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (MinusBoxExp happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (TimesBoxExp happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (DivideBoxExp happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (RoundInBoxExp happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn6
		 (NumInBox happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  7 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  7 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Times happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  7 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Divide happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  7 happyReduction_26
happyReduction_26 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn7
		 (Num happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 19 19 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenPlus -> cont 8;
	TokenMinus -> cont 9;
	TokenTimes -> cont 10;
	TokenDiv -> cont 11;
	TokenOpenRound -> cont 12;
	TokenClosedRound -> cont 13;
	TokenOpenBox -> cont 14;
	TokenClosedBox -> cont 15;
	TokenOpenCurly -> cont 16;
	TokenClosedCurly -> cont 17;
	TokenNum happy_dollar_dollar -> cont 18;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 19 tk tks = happyError' (tks, explist)
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
        = PlusExp Exp Exp
        | MinusExp Exp Exp
        | TimesExp Exp Exp
        | DivideExp Exp Exp
        | CurlyExp CurlyExp
        | BoxExp BoxExp
        | RoundExp LiteralExp
        | NumExp Int
        deriving Show

data CurlyExp
        = PlusCurlyExp CurlyExp CurlyExp
        | MinusCurlyExp CurlyExp CurlyExp
        | TimesCurlyExp CurlyExp CurlyExp
        | DivideCurlyExp CurlyExp CurlyExp
        | BoxInCurlyExp BoxExp
        | RoundInCurlyExp LiteralExp
        | NumInCurlyExp Int
        deriving Show

data BoxExp
        = PlusBoxExp BoxExp BoxExp
        | MinusBoxExp BoxExp BoxExp
        | TimesBoxExp BoxExp BoxExp
        | DivideBoxExp BoxExp BoxExp
        | RoundInBoxExp LiteralExp
        | NumInBox Int
        deriving Show

data LiteralExp
        = Plus LiteralExp LiteralExp
        | Minus LiteralExp LiteralExp
        | Times LiteralExp LiteralExp
        | Divide LiteralExp LiteralExp
        | Num Int
        deriving Show

main = do
    s <- getContents
    print (calc (lexer s))
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
