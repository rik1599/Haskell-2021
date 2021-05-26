{-# OPTIONS_GHC -w #-}
module Main (main) where
import Scanner
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,121) ([40960,6,848,43008,1,11,0,0,0,6784,16384,61,0,0,0,0,12032,0,106,1024,0,2,0,40960,6,848,43008,1,212,0,0,0,256,32768,0,112,20480,3,32,0,0,16,8192,0,4,0,40960,6,64,43008,1,32,6144,0,4,6784,0,2,8192,0,0,32,8192,0,16,0,32768,26,0,30720,1,848,16384,0,0,0,0,8,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Sequence","Exp","Literal","LetExp","CaseExp","Declaration","CaseBody","ElseBody","'='","'+'","'-'","'*'","'('","')'","num","var","let","case","else","%eof"]
        bit_start = st * 23
        bit_end = (st + 1) * 23
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..22]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 _ = happyReduce_2

action_1 (14) = happyShift action_6
action_1 (16) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (19) = happyShift action_9
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (14) = happyShift action_6
action_2 (16) = happyShift action_7
action_2 (18) = happyShift action_8
action_2 (19) = happyShift action_9
action_2 (4) = happyGoto action_20
action_2 (5) = happyGoto action_2
action_2 (6) = happyGoto action_3
action_2 (7) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 _ = happyReduce_2

action_3 (12) = happyShift action_16
action_3 (13) = happyShift action_17
action_3 (14) = happyShift action_18
action_3 (15) = happyShift action_19
action_3 _ = happyReduce_3

action_4 _ = happyReduce_4

action_5 _ = happyReduce_5

action_6 (14) = happyShift action_6
action_6 (16) = happyShift action_12
action_6 (18) = happyShift action_8
action_6 (19) = happyShift action_9
action_6 (6) = happyGoto action_15
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (14) = happyShift action_6
action_7 (16) = happyShift action_12
action_7 (18) = happyShift action_8
action_7 (19) = happyShift action_9
action_7 (20) = happyShift action_13
action_7 (21) = happyShift action_14
action_7 (6) = happyGoto action_11
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_12

action_9 _ = happyReduce_13

action_10 (23) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_16
action_11 (13) = happyShift action_17
action_11 (14) = happyShift action_18
action_11 (15) = happyShift action_19
action_11 (17) = happyShift action_27
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_6
action_12 (16) = happyShift action_12
action_12 (18) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (6) = happyGoto action_11
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (16) = happyShift action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (16) = happyShift action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_10

action_16 (14) = happyShift action_6
action_16 (16) = happyShift action_12
action_16 (18) = happyShift action_8
action_16 (19) = happyShift action_9
action_16 (6) = happyGoto action_24
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (14) = happyShift action_6
action_17 (16) = happyShift action_12
action_17 (18) = happyShift action_8
action_17 (19) = happyShift action_9
action_17 (6) = happyGoto action_23
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (14) = happyShift action_6
action_18 (16) = happyShift action_12
action_18 (18) = happyShift action_8
action_18 (19) = happyShift action_9
action_18 (6) = happyGoto action_22
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_6
action_19 (16) = happyShift action_12
action_19 (18) = happyShift action_8
action_19 (19) = happyShift action_9
action_19 (6) = happyGoto action_21
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_1

action_21 _ = happyReduce_8

action_22 (15) = happyShift action_19
action_22 _ = happyReduce_7

action_23 (15) = happyShift action_19
action_23 _ = happyReduce_6

action_24 (13) = happyShift action_17
action_24 (14) = happyShift action_18
action_24 (15) = happyShift action_19
action_24 _ = happyReduce_9

action_25 (14) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (18) = happyShift action_8
action_25 (19) = happyShift action_9
action_25 (5) = happyGoto action_30
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_4
action_25 (8) = happyGoto action_5
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (16) = happyShift action_29
action_26 (9) = happyGoto action_28
action_26 _ = happyReduce_18

action_27 _ = happyReduce_11

action_28 (17) = happyShift action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (19) = happyShift action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_37
action_31 (10) = happyGoto action_36
action_31 _ = happyReduce_20

action_32 (14) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (18) = happyShift action_8
action_32 (19) = happyShift action_9
action_32 (5) = happyGoto action_35
action_32 (6) = happyGoto action_3
action_32 (7) = happyGoto action_4
action_32 (8) = happyGoto action_5
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (16) = happyShift action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (18) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (5) = happyGoto action_43
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_4
action_34 (8) = happyGoto action_5
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (17) = happyShift action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_40
action_36 (17) = happyShift action_41
action_36 (11) = happyGoto action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_6
action_38 (16) = happyShift action_12
action_38 (18) = happyShift action_8
action_38 (19) = happyShift action_9
action_38 (6) = happyGoto action_48
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (17) = happyShift action_47
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (22) = happyShift action_46
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_15

action_42 (16) = happyShift action_29
action_42 (9) = happyGoto action_45
action_42 _ = happyReduce_18

action_43 (17) = happyShift action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (17) = happyShift action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_17

action_46 (14) = happyShift action_6
action_46 (16) = happyShift action_7
action_46 (18) = happyShift action_8
action_46 (19) = happyShift action_9
action_46 (5) = happyGoto action_50
action_46 (6) = happyGoto action_3
action_46 (7) = happyGoto action_4
action_46 (8) = happyGoto action_5
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_16

action_48 (12) = happyShift action_16
action_48 (13) = happyShift action_17
action_48 (14) = happyShift action_18
action_48 (15) = happyShift action_19
action_48 (17) = happyShift action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (14) = happyShift action_6
action_49 (16) = happyShift action_7
action_49 (18) = happyShift action_8
action_49 (19) = happyShift action_9
action_49 (5) = happyGoto action_53
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (17) = happyShift action_52
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_14

action_52 _ = happyReduce_21

action_53 (17) = happyShift action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (16) = happyShift action_37
action_54 (10) = happyGoto action_55
action_54 _ = happyReduce_20

action_55 _ = happyReduce_19

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 _
	_
	 =  HappyAbsSyn4
		 (
	)

happyReduce_2 = happySpecReduce_0  4 happyReduction_2
happyReduction_2  =  HappyAbsSyn4
		 (
	)

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn5
		 (
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn5
		 (
	)

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (
	)

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	_
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 _
	_
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 _
	_
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 _
	_
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 _
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn6
		 (
	)

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn6
		 (
	)

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn6
		 (
	)

happyReduce_14 = happyReduce 9 7 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 7 8 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 8 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 5 9 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_0  9 happyReduction_18
happyReduction_18  =  HappyAbsSyn9
		 (
	)

happyReduce_19 = happyReduce 7 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_0  10 happyReduction_20
happyReduction_20  =  HappyAbsSyn10
		 (
	)

happyReduce_21 = happyReduce 4 11 happyReduction_21
happyReduction_21 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 23 23 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenEq -> cont 12;
	TokenPlus -> cont 13;
	TokenMinus -> cont 14;
	TokenTimes -> cont 15;
	TokenOpenRound -> cont 16;
	TokenClosedRound -> cont 17;
	TokenNum happy_dollar_dollar -> cont 18;
	TokenVar happy_dollar_dollar -> cont 19;
	TokenLet -> cont 20;
	TokenCase -> cont 21;
	TokenElse -> cont 22;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 23 tk tks = happyError' (tks, explist)
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

main = do
    s <- getContents
    print (lexer s)
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
