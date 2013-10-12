concrete WordsChi of Words = SentencesChi ** 
    open 
      SyntaxChi,
      ParadigmsChi,
      (P = ParadigmsChi),
      (R = ResChi),
      (D = DictEngChi),
      (L = LexiconChi),
      Prelude in {

  flags coding = utf8 ;

  lin

-- Kinds; many of them are in the resource lexicon, others can be built by $mkN$.

    Apple = mkCN L.apple_N ;
    Beer = mkCN L.beer_N ;
    Bread = mkCN L.bread_N ;
    Cheese = mkCN L.cheese_N ;
    Chicken = mkCN D.chicken_N ;
    Coffee = mkCN D.coffee_N ;
    Fish = mkCN L.fish_N ;
    Meat = mkCN L.meat_N ;
    Milk = mkCN L.milk_N ;
--    Pizza = mkCN D.pizza_N ;
    Salt = mkCN L.salt_N ;
    Tea = mkCN D.tea_N ;
    Water = mkCN L.water_N ;
    Wine = mkCN L.wine_N ;

-- Properties; many of them are in the resource lexicon, others can be built by $mkA$.

    Bad = L.bad_A ;
--    Boring = D.boring_A ;
    Cheap = D.cheap_A ;
    Cold = L.cold_A ;
--    Delicious = D.delicious_A ;
    Expensive = D.expensive_A ;
    Fresh = D.fresh_A ;
    Good = D.good_A ;
--    Suspect = D.suspect_A ;
    Warm = L.warm_A ;

-- Places require different prepositions to express location; in some languages 
-- also the directional preposition varies, but in English we use $to$, as
-- defined by $mkPlace$.

    Airport = mkPlace ((D.airport_N)) ;
--    AmusementPark = mkPlace (placeN (D.amusement_park_N)) ;
    Bank = mkPlace ((D.bank_N)) ;
    Bar = mkPlace ((D.bar_N)) ;
    Cafeteria = mkPlace ((D.bank_N)) ;
---    Center = mkPlace D.center_N ;
--    Cinema = mkPlace (placeN (R.thword "โรง" "หนัง")) ;
--    Church = mkPlace (placeN (R.thword "โบส" "ถ์")) ;
--    Disco = mkPlace (placeN (R.thword "ดิส" "โก้")) ;
    Hospital = mkPlace D.hospital_N ;
    Hotel = mkPlace D.hotel_N ;
    Museum = mkPlace D.museum_N ;
--    Park = mkPlace (placeN (R.thword "สวน")) ;
--    Parking = mkPlace (placeN (R.thword "ที่" "จอด" "รถ")) ; 
--    Pharmacy = mkPlace (placeN (R.thword "ร้าน" "ขาย" "ยา")) ;
--    PostOffice = mkPlace (placeN (R.thword "ไปร" "ษณี" "ย์")) ;
--    Pub = mkPlace (placeN (R.thword "ร้าน" "เหล้า")) ;
    Restaurant = mkPlace L.restaurant_N ;
    School = mkPlace L.school_N ;
    Shop = mkPlace L.shop_N ;
--    Station = mkPlace (placeN (R.thword "สถา" "นี")) ;
--    Supermarket = mkPlace (placeN (R.thword "ซุป" "เปอ" "ร์" "มา" "เก็ต")) ; 
--    Theatre = mkPlace (placeN (R.thword "โรง" "ละ" "คร")) ;
--    Toilet = mkPlace (placeN (R.thword "ห้อง" "น้ำ")) ;
    University = mkPlace L.university_N ;
--    Zoo = mkPlace (placeN (R.thword "สวน" "สัต" "ว์")) ;
   
--    CitRestaurant cit = mkCNPlace (mkCN cit L.restaurant_N) at_Prep noPrep ;


-- Currencies; $crown$ is ambiguous between Danish and Swedish crowns.

--    DanishCrown = mkCN (mkA (R.thword "เดน" "มาร์ค")) (mkN "โครน") | mkCurrency "โครน" ; ---#
--    Dollar = mkCurrency (R.thword "ดอล" "ล่า" "ห์") ;
--    Euro = mkCurrency (R.thword "ยู" "โร") ;
--    Lei = mkCurrency "ลี" ;
--    Leva = mkCurrency (R.thword "ลี" "วา") ;
--    NorwegianCrown = mkCN (mkA (R.thword "นอร" "เว" "ย์")) (mkN "โครน") | mkCurrency "โครน" ;
--    Pound = mkCurrency (R.thword "ปอน" "ด์") ;
--    Rouble = mkCurrency (R.thword "รู" "เบิล") ;
--    SwedishCrown = mkCN (mkA (R.thword "สวี" "ดิช")) (mkN "โครน") | mkCurrency "โครน" ;
--    Zloty = mkCurrency (R.thword "สะ" "ลอ" "ตี้") ;

-- Nationalities

--    Belgian = mkA (R.thword "เบล" "เยี่ยน") ;
--    Belgium = mkNP (mkPN (R.thword "เบล" "เยี่ยม")) ;
--    Bulgarian = mkNat (R.thword "บัล" "แก" "เรียน") ;
--    Catalan = mkNat (R.thword "คะ" "ตะ" "ลัน") ;
--    Danish = mkNat (R.thword "เดน" "นิช") ;
--    Dutch =  mkNat (R.thword "ดัทช์") ;
--    English = mkNat (R.thword "อัง" "กฤษ") ;
--    Finnish = mkNat (R.thword "ฟิน" "นิช") ;
--    Flemish = mkNP (mkPN (R.thword "เฟลม" "มิช")) ;
--    French = mkNat (R.thword "ฝรั่ง" "เศส") ; 
--    German = mkNat (R.thword "เยอร" "มัน") ;
--    Italian = mkNat (R.thword "อิ" "ตา" "เลียน") ;
--    Norwegian = mkNat (R.thword "นอร" "เวย์" "เจี้ยน") ;
--    Polish = mkNat (R.thword "โป" "ลิช") ;
--    Romanian = mkNat (R.thword "โร" "มา" "เนียน") ;
--    Russian = mkNat (R.thword "รัส" "เซียน") ;
--    Spanish = mkNat (R.thword "สแปน" "นิช") ;
--    Swedish = mkNat (R.thword "สวี" "ดิช") ;

-- Means of transportation 

   Bike = mkTransport L.bike_N ;
   Bus = mkTransport D.bus_N ;
   Car = mkTransport L.car_N ;
--   Ferry = mkTransport (mkN (R.thword "เรือ" "เฟอ" "รี่")) ;
   Plane = mkTransport L.airplane_N ;
--   Subway = mkTransport (mkN (R.thword "รถ" "ไฟ" "ใต้" "ดิน")) ;
--   Taxi = mkTransport (mkN (R.thword "รถ" "แท็ก" "ซี่")) ;
   Train = mkTransport L.train_N ;
--   Tram = mkTransport (mkN (R.thword "รถ" "ราง")) ;

--   ByFoot = P.mkAdv (R.thword "ด้วย" "การ" "เดิน") ;

-- Actions: the predication patterns are very often language-dependent.

--    AHasAge p num = mkCl p.name (mkNP (mkNP num L.year_N) (ParadigmsChi.mkAdv (R.thword "อา" "ยุ"))) ;
    AHasChildren p num = mkCl p.name have_V2 (mkNP num L.child_N) ;
--    AHasRoom p num = mkCl p.name have_V2 
--      (mkNP (mkNP a_Det (mkN "ห้อง")) (SyntaxChi.mkAdv for_Prep (mkNP num (mkN "หมาย" "เลข")))) ;
--    AHasTable p num = mkCl p.name have_V2 
--      (mkNP (mkNP a_Det (mkN "โต๊ะ")) (SyntaxChi.mkAdv for_Prep (mkNP num (mkN "ตัว" "ที่")))) ;
--    AHasName p name = mkCl p.name (mkV2 "ชื่อ") name ; ---
--    AHungry p = mkCl p.name (mkA (R.thword "หิว" "ข้าว")) ;
--    AIll p = mkCl p.name (mkA (R.thword "เจ็บ" "ปวย")) ;
    AKnow p = mkCl p.name <lin V L.know_V2 : V> ;
    ALike p item = mkCl p.name D.like_V2 item ;
---    ALive p co = mkCl p.name D.live_V2 co ;
    ALove p q = mkCl p.name L.love_V2 q.name ;
    AMarried p = mkCl p.name (mkAP L.married_A2) ;
    AReady p = mkCl p.name L.ready_A ;
--    AScared p = mkCl p.name (mkA "กลัว") ;
    ASpeak p lang = mkCl p.name L.speak_V2 lang ;
--    AThirsty p = mkCl p.name (mkA (R.thword "กระ" "หาย" "น้ำ")) ;
--    ATired p = mkCl p.name (mkA "เหนื่อย") ;
--    AUnderstand p = mkCl p.name (mkV (R.thword "เข้า" "ใจ")) ;
--    AWant p obj = mkCl p.name (mkV2 (mkV (R.thword "ต้อง" "การ"))) obj ;
--    AWantGo p place = mkCl p.name want_VV (mkVP (mkVP L.go_V) place.to) ;

-- miscellaneous

--    QWhatName p = mkQS (mkQCl whatSg_IP p.name (mkV2 "ชื่อ")) ; ---
--    QWhatAge p = mkQS (mkQCl (mkIComp how8much_IAdv) (mkNP p.name (ParadigmsChi.mkAdv (R.thword "อา" "ยุ")))) ; --- Adv
--    HowMuchCost item = mkQS (mkQCl (mkIComp how8much_IAdv) item) ;
--    ItCost item price = mkCl item (mkV2 (R.thword "เป็น" "รา" "คา")) price ;

--    PropOpen p = mkCl p.name open_A ;
--    PropClosed p = mkCl p.name closed_A ;
--    PropOpenDate p d = mkCl p.name (mkVP (mkVP open_A) d) ; 
--    PropClosedDate p d = mkCl p.name (mkVP (mkVP closed_A) d) ; 
--    PropOpenDay p d = mkCl p.name (mkVP (mkVP open_A) d.habitual) ; 
--    PropClosedDay p d = mkCl p.name (mkVP (mkVP closed_A) d.habitual) ; 

-- Building phrases from strings is complicated: the solution is to use
-- mkText : Text -> Text -> Text ;

--    PSeeYouDate d = mkText (lin Text (ss (    R.thword "เจอ" "กัน"))) (mkPhrase (mkUtt d)) ;
--    PSeeYouPlace p = mkText (lin Text (ss (R.thword "เจอ" "กัน" "ที่"))) (mkPhrase (mkUtt p.at)) ;
--    PSeeYouPlaceDate p d = 
--      mkText (lin Text (ss (R.thword "เจอ" "กัน" "ที่"))) 
--        (mkText (mkPhrase (mkUtt p.at)) (mkPhrase (mkUtt d))) ;

-- Relations are expressed as "มย วิฝเ" or "มย สoณส วิฝเ", as defined by $xOf$
-- below. Languages without productive genitives must use an equivalent of
-- "ตหเ วิฝเ oฝ มย สoน" for non-pronouns.

    Wife = xOf D.wife_N ;
    Husband = xOf D.husband_N ;
    Wife = xOf D.wife_N ;
    Son = xOf D.son_N ;
    Daughter = xOf  D.daughter_N ;
    Children = xOf L.child_N ; ----

-- week days

  Monday = mkDay "星期一" ;
  Tuesday = mkDay "星期二" ;
  Wednesday = mkDay "星期三" ;
  Thursday = mkDay "星期四" ;
  Friday = mkDay "星期五" ;
  Saturday = mkDay "星期六" ;
  Sunday = mkDay "星期日" ;
 
  Tomorrow = mkAdv "明天" ;

-- modifiers of places

   TheBest = mkSuperl L.good_A ;
   TheClosest = mkSuperl L.near_A ; 
   TheCheapest = mkSuperl D.cheap_A ;
   TheMostExpensive = mkSuperl D.expensive_A ;
   TheMostPopular = mkSuperl D.popular_A ;
   TheWorst = mkSuperl L.bad_A ;

   SuperlPlace sup p = placeNP sup p ;


-- transports

--    HowFar place = mkQS (mkQCl howFar.howfar place.name) ; ---- (mkNP place.name howFar.far)) ;

--    HowFarFrom x y = 
--      mkQS (mkQCl howFar.how (mkCl (mkNP y.name howFar.far) (lin AP (R.thbind from_Prep x.name)))) ; --- no yuu

--    HowFarFromBy x y t = 
--      mkQS (mkQCl howFar.how (mkCl (mkNP y.name howFar.far) 
--        (lin AP (R.thbind from_Prep (mkNP x.name t))))) ;
--      mkQS (mkQCl howFar.how (mkCl (mkNP y.name howFar.far) 
--        (SyntaxChi.mkAdv from_Prep (mkNP x.name t)))) ;

--    HowFarBy y t = mkQS (mkQCl howFar.how (mkCl (mkNP y.name howFar.far) <t : AP>)) ;
 
--    WhichTranspPlace trans place = 
--      mkQS (mkQCl (mkIP which_IDet trans.name) (mkVP (mkVP L.go_V) place.to)) ;

--    IsTranspPlace trans place =
--      mkQS (mkQCl (mkCl (mkCN (mkCN trans.name (mkSC (mkVP L.go_V))) place.to))) ;



-- auxiliaries

  oper
    mkNat : Str -> NPNationality = \nat -> 
      mkNPNationality (mkNP (mkCN (mkA nat) L.language_N)) (mkNP (mkCN (mkA nat) L.country_N)) (mkA nat) ;

    mkDay : Str -> {name : NP ; point : Adv ; habitual : Adv} = \d ->
      let day = mkNP (mkPN d) in 
      mkNPDay day (SyntaxChi.mkAdv noPrep day) 
        (SyntaxChi.mkAdv noPrep (mkNP a_Quant plNum (mkCN (mkN d)))) ;
    
    mkPlace : N -> {name : CN ; at : Prep ; to : Prep; isPl : Bool} = \p -> 
      mkCNPlace (mkCN p) at_Prep noPrep ;

    placeN : Str -> N = \s -> mkN s "间" ;

--    open_A = P.mkA "เปิด" ;
--    closed_A = P.mkA "ปิด" ;

    xOf : N -> NPPerson -> NPPerson = \f,p -> 
      {name = mkNP the_Det (mkCN f (SyntaxChi.mkAdv possess_Prep p.name)) ; 
       isPron = False ; poss = the_Quant} ; ---- poss not used


    mkTransport : N -> {name : CN ; by : SyntaxChi.Adv} = \n -> {
      name = mkCN n ; 
      by = SyntaxChi.mkAdv by8means_Prep (mkNP n)
      } ;

    mkSuperl : A -> Det = \a -> SyntaxChi.mkDet the_Art (SyntaxChi.mkOrd a) ;

--    mkCurrency : Str -> CN = \s -> mkCN (mkN [] s) ; ---- just a classifier
    
--    howFar : {howfar : IComp ; far : Adv ; how : IAdv} = {  --- to avoid yuu
--      howfar = lin IComp (ss ("ไกล" + "เท่า" + "ไร")) ; far = lin Adv (ss ("ไกล" + "เท่า" + "ไร")) ; how = lin IAdv (ss [])
--      } ;

    at_Prep = D.at_Prep ;
    noPrep = mkPrep [] ;

--------------------------------------------------
-- New 30/11/2011 AR
--------------------------------------------------

--  lin
--    Thai = mkNat "ไทย" ;
--    Baht = mkCurrency "บาท" ;

--    Rice = mkCN (mkN ("ข้าว")) ;
--    Pork = mkCN (mkN ("หมู")) ;
--    Beef = mkCN (mkN ("เนื้อ")) ;
--    Egg = mkCN L.egg_N ;
--    Noodles = mkCN (mkN (R.thword "ก๋วย" "เตี๋ยว")) ;
--    Shrimps = mkCN (mkN ("กุ้ง")) ;
--    Chili = mkCN (mkN "พริก") ;
--    Garlic = mkCN (mkN (R.thword "กะ" "เทียม")) ;
--    Durian = mkCN (mkN (R.thword "ทุ" "เรียน")) ;
--    Mango = mkCN (mkN (R.thword "มะ" "ม่วง")) ;
--    Pineapple = mkCN (mkN (R.thword "สับ" "ปะ" "รด")) ;
--    Coke = mkCN (mkN ("โค้ก")) ;
--    IceCream = mkCN (mkN (R.thword "ไอ" "ศ" "กรีม")) ;
--    Salad = mkCN (mkN "สลัด") ;
--    OrangeJuice = mkCN (mkN (R.thword "น้ำ" "ส้ม" "คั้น")) ;
--    Lemonade = mkCN (mkN (R.thword "น้ำ" "มะ" "นาว")) ;
--    Beach = mkPlace (placeN (R.thword "หาด")) ;

--    ItsRaining = mkCl (mkVP L.rain_V0) ;
--    ItsCold = mkCl (mkVP L.cold_A) ;
--    ItsWarm = mkCl (mkVP L.warm_A) ;
--    ItsWindy = mkCl (mkVP (P.mkA (R.thword "ลม" "จัด"))) ;
--    SunShine = mkCl (mkNP the_Det L.sun_N) (mkVP (R.regV (R.thword "ฉาย" "แสง"))) ;

--    Smoke = mkVP (P.mkV (R.thword "สูบ" "บุ" "รี")) ;

--    ADoctor = mkProfession (P.personN "หมอ") ;
--    AProfessor = mkProfession (P.personN (R.thword "อา" "จารย์")) ;
--    ALawyer = mkProfession (P.personN (R.thword "มัก" "กฎ" "หมาย")) ;
--    AEngineer =  mkProfession (P.personN (R.thword "วิ" "ศวกร")) ;
--    ATeacher = mkProfession (P.personN "ครู") ;
--    ACook = mkProfession (P.personN (R.thword "ภัก" "ษกาน")) ;
--    AStudent = mkProfession (P.personN (R.thword "นัก" "ศึก" "ษา")) ;
--    ABusinessman = mkProfession (P.personN (R.thword "ฝู้" "ประ" "กอบ" "การ")) ;

--  oper
--    mkProfession : N -> NPPerson -> Cl = \n,p -> mkCl p.name n ;
--}
  
}