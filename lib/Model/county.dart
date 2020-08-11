
import 'package:flutter/cupertino.dart';

class County {

  String name;
  String link;
  String detail;
  String personInchargeName;
  String phoneNumber;
  String email;


  County(String currentName){

    this.name = currentName;


    this.link = County.websiteList[this.name];//'https://en.wikipedia.org/wiki/${this.name}_County,_Florida';
    this.detail = County.countiesMap[this.name];
    this.personInchargeName = County.personName[this.name];
    this.phoneNumber = County.phoneNumbers[this.name];
    this.email = County.emailLists[this.name];


  }


  static Map<String, String> phoneNumbers = {'Alachua':'352-374-5252',
    'Baker':'904-259-6339',
    'Bay':'850-784-6100',
    'Bradford':'904-966-6266',
    'Brevard':'321-633-2124',
    'Broward':'954-357-7050',
    'Calhoun':'850-674-8568',
    'Charlotte':'941-833-5400',
    'Citrus':'352-564-7120',
    'Clay':'904-269-6350',
    'Collier':'239-252-8683',
    'Columbia':'386-758-1026',
    'DeSoto':'863-993-4871',
    'Dixie':'352-498-1216',
    'Duval':'904-630-1414',
    'Escambia':'850-595-3900',
    'Flagler':'386-313-4170',
    'Franklin':'352-374-5252',
    'Gadsden':'850-627-9910',
    'Gilchrist':'352-463-3194',
    'Glades':'863-946-6005',
    'Gulf':'850-229-6117',
    'Hamilton':'386-792-1426',
    'Hardee':'863-773-6061',
    'Hendry':'863-675-5230',
    'Hernando':'352-754-4125',
    'Highlands':'863-402-6655',
    'Hillsborough':'813-744-5900',
    'Holmes':'850-547-1107',
    'Indian River':'772-226-3440',
    'Jackson':'850-482-9652',
    'Jefferson':'850-997-3348',
    'Lafayette':'386-294-1261',
    'Lake':'352-343-9734',
    'Lee':'239-533-8683',
    'Levy':'352-486-5163',
    'Liberty':'850-643-5226',
    'Madison':'850-973-6507',
    'Manatee':'941-741-3823',
    'Marion':'352-620-3290',
    'Martin':'772-288-5637',
    'Miami-Dade':'305-499-8683',
    'Monroe':'305-292-3416',
    'Nassau':'904-491-7500',
    'Okaloosa':'850-689-5600',
    'Okeechobee':'863-763-0152',
    'Orange':'407-836-2070',
    'Osceola':'407-742-6000',
    'Palm Beach':'561-656-6200',
    'Pasco':'800-851-8754',
    'Pinellas':'727-464-6108',
    'Polk':'863-534-5888',
    'Putnam':'386-329-0224',
    'Santa Rosa':'850-983-1900',
    'Sarasota':'941-861-8600',
    'Seminole':'407-585-8683',
    'St. Johns':'904-823-2238\nFax: 904-823-2249',
    'St Lucie':'772-462-1500',
    'Sumter':'352-569-1540',
    'Suwannee':'386-362-2616',
    'Taylor':'850-838-3515',
    'Union':'386-496-2236',
    'Volusia':'386-736-5930',
    'Wakulla':'850-926-7575',
    'Walton':'850-892-8112',
    'Washington':'850-638-6230'};

  static Map<String, String> emailLists = {'Alachua':'kbarton@alachuacounty.us',
    'Baker':'vote@bakercountyfl.org',
    'Bay':'webrequest@bayvotes.org',
    'Bradford':'Bradsoe@bradfordcountyfl.gov',
    'Brevard':'soe@votebrevard.com',
    'Broward':'Elections@browardsoe.org',
    'Calhoun':'oe@votecalhoun.com',
    'Charlotte':'soe@charlottevotes.com',
    'Citrus':'vote@votecitrus.com',
    'Clay':'Chris.Chambless@clayelections.gov',
    'Collier':'supervisorofelections@colliercountyfl.gov',
    'Columbia':'election@votecolumbia.com',
    'DeSoto':'mnegley@votedesoto.com',
    'Dixie':'dixiecountysoe@bellsouth.net',
    'Duval':'mhogan@coj.net',
    'Escambia':'soe@escambiavotes.com',
    'Flagler':'info@flaglerelections.com',
    'Franklin':'kbarton@alachuacounty.us',
    'Gadsden':'info@gadsdensoe.com',
    'Gilchrist':'elections@gilchrist.fl.us',
    'Glades':'vote@myglades.com',
    'Gulf':'gulfsoe@votegulf.com',
    'Hamilton':'elect@hamiltonvotes.com',
    'Hardee':'info@hardeecountyelections.com',
    'Hendry':'supervisor@hendryelections.org',
    'Hernando':'Elections@hernandovotes.com',
    'Highlands':'soe@votehighlands.com',
    'Hillsborough':'voter@hcsoe.org',
    'Holmes':'therisa@holmeselections.com',
    'Indian River':'info@voteindianriver.com',
    'Jackson':'email@jacksoncountysoe.org',
    'Jefferson':'soe@jeffersoncountyfl.gov',
    'Lafayette':'lafayettesoe@gmail.com',
    'Lake':'hays@lakevotes.com',
    'Lee':'elections@lee.vote',
    'Levy':'elections@votelevy.com',
    'Liberty':'vote@libertyelections.com',
    'Madison':'thardee@votemadison.com',
    'Manatee':'info@votemanatee.com',
    'Marion':'Elections@VoteMarion.gov',
    'Martin':'elections@martinvotes.com',
    'Miami-Dade':'soedade@miamidade.gov',
    'Monroe':'info@keys-elections.org',
    'Nassau':'vcannon@votenassau.com',
    'Okaloosa':'plux@myokaloosa.com',
    'Okeechobee':'Elections@voteokeechobee.com',
    'Orange':'voter@ocfelections.com',
    'Osceola':'soe@voteosceola.com',
    'Palm Beach':'info@pbcelections.org',
    'Pasco':'webcomment@pascovotes.com',
    'Pinellas':'Election@VotePinellas.com',
    'Polk':'info@polkelections.com',
    'Putnam':'electionsoffice@putnam-fl.com',
    'Santa Rosa':'villane@santarosa.fl.gov',
    'Sarasota':'rturner@sarasotavotes.com',
    'Seminole':'Elections@VoteSeminole.org',
    'St. Johns':'Email: voakes@votesjc.com',
    'St Lucie':'elections@slcelections.com',
    'Sumter':'bill.keen@sumterelections.org',
    'Suwannee':'gwilliams@suwanneevotes.com',
    'Taylor':'taylorelections@gtcom.net',
    'Union':'debbie.osborne@unionflvotes.com',
    'Volusia':'elections@volusia.org',
    'Wakulla':'hwells@mywakulla.com',
    'Walton':'BBeasley@votewalton.com',
    'Washington':'crudd@wcsoe.org'};


  static Map<String, String> websiteList = {'Alachua':'www.votealachua.com',
    'Baker':'www.bakerelections.com',
    'Bay':'www.bayvotes.org',
    'Bradford':'www.bradfordelections.com',
    'Brevard':'www.votebrevard.com',
    'Broward':'www.browardsoe.org',
    'Calhoun':'www.votecalhoun.com',
    'Charlotte':'httpwww.charlottevotes.com',
    'Citrus':'www.votecitrus.com',
    'Clay':'www.clayelections.com',
    'Collier':'www.colliervotes.com',
    'Columbia':'www.votecolumbia.com',
    'DeSoto':'www.votedesoto.com',
    'Dixie':'www.dixievotes.com',
    'Duval':'www.duvalelections.com',
    'Escambia':'www.escambiavotes.gov',
    'Flagler':'www.flaglerelections.com',
    'Franklin':'http://www.votealachua.com/',
    'Gadsden':'www.gadsdensoe.com',
    'Gilchrist':'www.votegilchrist.com',
    'Glades':'www.voteglades.com',
    'Gulf':'www.votegulf.com',
    'Hamilton':'www.hamiltonvotes.com',
    'Hardee':'www.hardeecountyelections.com',
    'Hendry':'www.hendryelections.org',
    'Hernando':'www.hernandovotes.com',
    'Highlands':'www.votehighlands.com',
    'Hillsborough':'www.votehillsborough.org',
    'Holmes':'www.holmeselections.com',
    'Indian River':'www.voteindianriver.com',
    'Jackson':'www.jacksoncountysoe.org',
    'Jefferson':'www.jeffersonvotes.com',
    'Lafayette':'www.lafayettevotes.net',
    'Lake':'www.lakevotes.com',
    'Lee':'www.lee.vote',
    'Levy':'www.votelevy.com',
    'Liberty':'www.libertyelections.com',
    'Madison':'www.votemadison.com',
    'Manatee':'www.votemanatee.com'
    ,'Marion':'www.votemarion.gov',
    'Martin':'www.martinvotes.com',
    'Miami-Dade':'www.miamidade.gov/elections',
    'Monroe':'www.keyselections.org',
    'Nassau':'www.votenassau.com',
    'Okaloosa':'www.govote-okaloosa.com',
    'Okeechobee':'www.voteokeechobee.com',
    'Orange':'www.ocfelections.com',
    'Osceola':'www.voteosceola.com',
    'Palm Beach':'www.pbcelections.org',
    'Pasco':'www.pascovotes.com',
    'Pinellas':'',
    'Polk':'www.polkelections.com',
    'Putnam':'https://soe.putnam-fl.com',
    'Santa Rosa':'www.votesantarosa.com',
    'Sarasota':'www.sarasotavotes.com',
    'Seminole':'http://voteseminole.org',
    'St. Johns':'www.votesjc.com',
    'St Lucie':'www.slcelections.com',
    'Sumter':'www.sumterelections.org',
    'Suwannee':'www.suwanneevotes.com',
    'Taylor':'www.taylorelections.com',
    'Union':'www.unionflvotes.com',
    'Volusia':'www.volusiaelections.org',
    'Wakulla':'www.wakullaelection.com',
    'Walton':'www.votewalton.com',
    'Washington':'http://www.wcsoe.org'};

  static Map<String, String> websiteList2 = {'Alachua':'','Baker':'',
    'Bay':'',
    'Bradford':'',
    'Brevard':'',
    'Broward':'',
    'Calhoun':'',
    'Charlotte':'',
    'Citrus':'',
    'Clay':'',
    'Collier':'',
    'Columbia':'',
    'DeSoto':'',
    'Dixie':'',
    'Duval':'',
    'Escambia':'',
    'Flagler':' ',
    'Franklin':' ',
    'Gadsden':'',
    'Gilchrist':'',
    'Glades':'',
    'Gulf':'',
    'Hamilton':' ',
    'Hardee':' ',
    'Hendry':' ',
    'Hernando':' ',
    'Highlands':' ',
    'Hillsborough':' ',
    'Holmes':' ',
    'Indian River':' ',
    'Jackson':'',
    'Jefferson':' ',
    'Lafayette':' ',
    'Lake':' ',
    'Lee':' ',
    'Levy':' ',
    'Liberty':' ',
    'Madison':'',
    'Manatee':' '
    ,'Marion':' ',
    'Martin':'',
    'Miami-Dade':'',
    'Monroe':'',
    'Nassau':'',
    'Okaloosa':'',
    'Okeechobee':' ',
    'Orange':' ',
    'Osceola':'',
    'Palm Beach':'  ',
    'Pasco':'',
    'Pinellas':' ',
    'Polk':' ',
    'Putnam':'',
    'Santa Rosa':'',
    'Sarasota':' ',
    'Seminole':' ',
    'St. Johns':' ',
    'St Lucie':' ',
    'Sumter':'',
    'Suwannee':'',
    'Taylor':'',
    'Union':'',
    'Volusia':' ',
    'Wakulla':' ',
    'Walton':'',
    'Washington':''};
  static Map<String, String> personName = {'Alachua':'','Baker':'Nita Crawford',
    'Bay':'Mark Andersen',
    'Bradford':'Terry L.Vaughan',
    'Brevard':'Lori Scott','Broward':'Peter Antonacci',
    'Calhoun':'Sharon Chason',
    'Charlotte':'Paul A.Stamoulis',
    'Citrus':'Susan A.Gill',
    'Clay':'Chris H.Chambless',
    'Collier':'Jennifer J.Edwards',
  'Columbia':'Elizabeth P.Horne',
    'DeSoto':'Mark F.Negley',
    'Dixie':'Starlet Cannon',
    'Duval':'Mike Hogan',
    'Escambia':'David H.Stafford',
    'Flagler':'Kaiti Lenhart',
    'Franklin':'Heather Riley',
    'Gadsden':'Shirley G.Knight',
    'Gilchrist':'Connie Sanchez',
  'Glades':'Aletris Farnam',
    'Gulf':'John Hanlon',
    'Hamilton':'Laura Hutto',
    'Hardee':'Diane Smith',
    'Hendry':'Brenda Hoots',
    'Hernando':'Shirley Anderson',
    'Highlands':'Penny Ogg',
  'Hillsborough':'Craig Latimer',
    'Holmes':'Therisa Meadows',
    'Indian River':'Leslie Rossway',
  'Jackson':'',
    'Jefferson':'Marty Bishop',
    'Lafayette':'Travis Hart',
    'Lake':'Alan Hays',
    'Lee':'Tommy Doyle',
    'Levy':'Tammy Jones',
    'Liberty':'Grant Conyers',
    'Madison':'Thomas "Tommy" R.Hardee','Manatee':'Michael Bennett'
  ,'Marion':'Wesley Wilcox',
    'Martin':'Vicki Davis',
    'Miami-Dade':'Christina White',
    'Monroe':'Joyce Griffin',
    'Nassau':'Vicki P.Cannon',
  'Okaloosa':'Paul A.Lux',
    'Okeechobee':'Diane Hagan',
    'Orange':'Bill Cowles',
    'Osceola':'Mary Jane Arrington',
    'Palm Beach':'Wendy Sartory Link',
    'Pasco':'Brian E.Corley',
    'Pinellas':'Julie Marcus',
  'Polk':'Lori Edwards',
    'Putnam':'Charles Overturf',
    'Santa Rosa':'Tappie A Villane',
    'Sarasota':'Ron Turner',
    'Seminole':'Chris Anderson',
    'St. Johns':'Vicky Oakes',
    'St Lucie':'Gertrude Walker',
    'Sumter':'William "Bill" Keen',
  'Suwannee':'Glenda B.Williams',
    'Taylor':'Dana Southerland',
    'Union':'Deborah K.Osborne',
    'Volusia':'Lisa Lewis',
    'Wakulla':'Henry Wells',
    'Walton':'Bobby Beasley',
    'Washington':'Carol F.Rudd'};

  static Map<String, String> countiesMap = {'Alachua': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
  
 
  
  
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Baker': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Bay': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Bradford' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Brevard' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Broward' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''' ,
    'Calhoun' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''' ,
    'Charlotte' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Citrus' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Clay': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Collier': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Columbia': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Dade' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Desoto' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Dixie' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Duval' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Escambia' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''' ,
    'Flagler' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Franklin': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Gadsden': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Gilchrist': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Glades': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Gulf': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Hamilton': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Hardee' : '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Hendry': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Hernando': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Highlands': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Hillsborough': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Holmes': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Indian River': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Jackson': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Jefferson': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Lafayette': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Lake': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Lee': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Leon': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Levy': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Liberty': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Madison': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Manatee': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Marion': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Martin': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Miami-Dade': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Monroe': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Multiple Counties': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Nassau': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Okaloosa': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Okeechobee': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Orange': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Osceola': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Palm Beach': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Pasco': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Pinellas': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Polk': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Putnam': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Santa Rosa': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Sarasota': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Seminole': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'St. Johns': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'St. Lucie': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Sumter': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Suwannee': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Taylor': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Union': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Volusia': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Wakulla': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Walton': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.''',
    'Washington': '''Jackson County was created by the Florida Territorial Council in 1822 out of Escambia County, at the same time that Duval County was organized from land of St. Johns County, making them the third and fourth counties in the Territory. The county was named for Andrew Jackson, a General of the War of 1812, who had served as Florida's first military governor for six months in 1821.[4] Jackson County originally extended from the Choctawhatchee River on the west to the Suwannee River on the east. By 1840 the county had been reduced close to its present boundaries through the creation of new counties from its original territory, following an increase of population in these areas. Minor adjustments to the county boundaries continued through most of the 19th century, however.
There were no towns in Jackson County when it was formed. The first county court met at what was called "Robinson's Big Spring" (later called Blue Springs) in 1822 and then at the "Big Spring of the Choctawhatchee" in 1823. The following year the county court met at "Chipola Settlement", which is also known as Waddell's Mill Pond.'''};

  Map<String, String> LinkMap = {'Alachua': ''' ''',
    'Baker': ''' ''',
    'Bay': ''' ''',
    'Bradford' : ''' ''',
    'Brevard' : ''' ''',
    'Broward' : ''' ''' ,
    'Calhoun' : ''' ''' ,
    'Charlotte' : ''' ''',
    'Citrus' : ''' ''',
    'Clay': ''' ''',
    'Collier': ''' ''',
    'Columbia': ''' ''',
    'Dade' : ''' ''',
    'Desoto' : ''' ''',
    'Dixie' : ''' ''',
    'Duval' : ''' ''',
    'Escambia' : ''' ''' ,
    'Flagler' : ''' ''',
    'Franklin': ''' ''',
    'Gadsden': ''' ''',
    'Gilchrist': ''' ''',
    'Glades': ''' ''',
    'Gulf': ''' ''',
    'Hamilton': ''' ''',
    'Hardee' : ''' ''',
    'Hendry': ''' ''',
    'Hernando': ''' ''',
    'Highlands': ''' ''',
    'Hillsborough': ''' ''',
    'Holmes': ''' ''',
    'Indian River': ''' ''',
    'Jackson': ''' ''',
    'Jefferson': ''' ''',
    'Lafayette': ''' ''',
    'Lake': ''' ''',
    'Lee': ''' ''',
    'Leon': ''' ''',
    'Levy': ''' ''',
    'Liberty': ''' ''',
    'Madison': ''' ''',
    'Manatee': ''' ''',
    'Marion': ''' ''',
    'Martin': ''' ''',
    'Miami-Dade': ''' ''',
    'Monroe': ''' ''',
    'Multiple Counties': ''' ''',
    'Nassau': ''' ''',
    'Okaloosa': ''' ''',
    'Okeechobee': ''' ''',
    'Orange': ''' ''',
    'Osceola': ''' ''',
    'Palm Beach': ''' ''',
    'Pasco': ''' ''',
    'Pinellas': ''' ''',
    'Polk': ''' ''',
    'Putnam': ''' ''',
    'Santa Rosa': ''' ''',
    'Sarasota': ''' ''',
    'Seminole': ''' ''',
    'St. Johns': ''' ''',
    'St. Lucie': ''' ''',
    'Sumter': ''' ''',
    'Suwannee': ''' ''',
    'Taylor': ''' ''',
    'Union': ''' ''',
    'Volusia': ''' ''',
    'Wakulla': ''' ''',
    'Walton': ''' ''',
    'Washington': ''' '''};


}