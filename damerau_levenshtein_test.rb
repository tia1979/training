require "damerau-levenshtein"

@source_data = [
  {
    "last_only_name": "100 N. Broadway, LLC",
    "c": 1
  },
  {
    "last_only_name": "1329 N. Lake Street TIC",
    "c": 1
  },
  {
    "last_only_name": "1st Choice Garage Doors",
    "c": 1
  },
  {
    "last_only_name": "2280 White Oak Circle, LLC",
    "c": 1
  },
  {
    "last_only_name": "4M Self Storage",
    "c": 1
  },
  {
    "last_only_name": "4M Self Storage, INC",
    "c": 1
  },
  {
    "last_only_name": "4M Self Storage, INC.",
    "c": 1
  },
  {
    "last_only_name": "4P Properties LLC",
    "c": 1
  },
  {
    "last_only_name": "5 Way LLC",
    "c": 1
  },
  {
    "last_only_name": "A T & T",
    "c": 1
  },
  {
    "last_only_name": "AAA Chicago",
    "c": 3
  },
  {
    "last_only_name": "Accredited Data centers",
    "c": 1
  },
  {
    "last_only_name": "Advantage Machining",
    "c": 1
  },
  {
    "last_only_name": "Alanedly Services LLC",
    "c": 1
  },
  {
    "last_only_name": "Alarm Detection",
    "c": 1
  },
  {
    "last_only_name": "Alarm Detection Services",
    "c": 2
  },
  {
    "last_only_name": "Alarm Detection Services, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Alarm Detection Systems",
    "c": 13
  },
  {
    "last_only_name": "Alarm Detection Systems Inc",
    "c": 1
  },
  {
    "last_only_name": "Alarm Detection Systems Inc.",
    "c": 1
  },
  {
    "last_only_name": "Alarm Detection Systems, Inc.",
    "c": 22
  },
  {
    "last_only_name": "Alden Courts of Waterford",
    "c": 1
  },
  {
    "last_only_name": "Alden Gardens of Waterford, LLC",
    "c": 1
  },
  {
    "last_only_name": "Alden of Waterford Rehabilitation & Health Care Center",
    "c": 1
  },
  {
    "last_only_name": "AmTab Manufacturing",
    "c": 1
  },
  {
    "last_only_name": "ArchAngels Bio Recovery",
    "c": 1
  },
  {
    "last_only_name": "Archangels Biorecovery",
    "c": 2
  },
  {
    "last_only_name": "Archangels Biorecovery Inc",
    "c": 2
  },
  {
    "last_only_name": "Archangels Biorecovery Inc.",
    "c": 1
  },
  {
    "last_only_name": "ArchAngels Biorecovery Services",
    "c": 1
  },
  {
    "last_only_name": "Archangels Biorecovery, Inc.",
    "c": 1
  },
  {
    "last_only_name": "ARTLIP AND SONS, INC",
    "c": 1
  },
  {
    "last_only_name": "Association for Individual Development",
    "c": 2
  },
  {
    "last_only_name": "AT&T",
    "c": 27
  },
  {
    "last_only_name": "ATMI Precast",
    "c": 4
  },
  {
    "last_only_name": "Aurora Entertainment LLC",
    "c": 2
  },
  {
    "last_only_name": "Aurora Eye Clinic",
    "c": 1
  },
  {
    "last_only_name": "Aurora Fast Print",
    "c": 1
  },
  {
    "last_only_name": "Aurora Firefighters Credit Union",
    "c": 4
  },
  {
    "last_only_name": "Aurora Firefighters' Credit Union",
    "c": 1
  },
  {
    "last_only_name": "Aurora Fresh Market",
    "c": 1
  },
  {
    "last_only_name": "Aurora Fresh Market Inc",
    "c": 4
  },
  {
    "last_only_name": "Aurora La Villita Inc",
    "c": 1
  },
  {
    "last_only_name": "Aurora La Villita Inc.",
    "c": 2
  },
  {
    "last_only_name": "Aurora Metal Recycling",
    "c": 1
  },
  {
    "last_only_name": "Aurora Policemen CU",
    "c": 2
  },
  {
    "last_only_name": "Aurora Township Republican Central Committee",
    "c": 1
  },
  {
    "last_only_name": "Aurora's Jewelry",
    "c": 1
  },
  {
    "last_only_name": "Auto Paint Techniques Towing",
    "c": 1
  },
  {
    "last_only_name": "Ayala Auto Sales",
    "c": 1
  },
  {
    "last_only_name": "Banana Split Inc.",
    "c": 1
  },
  {
    "last_only_name": "Baum Property Management",
    "c": 2
  },
  {
    "last_only_name": "Beans Greens Proteins Limited",
    "c": 1
  },
  {
    "last_only_name": "Benivex, Inc.",
    "c": 2
  },
  {
    "last_only_name": "Bill Foster for Congress",
    "c": 2
  },
  {
    "last_only_name": "Bill Foster for Congress Committee",
    "c": 4
  },
  {
    "last_only_name": "Bill Foster for Contress",
    "c": 1
  },
  {
    "last_only_name": "Birthday Fundraiser",
    "c": 1
  },
  {
    "last_only_name": "Black Door Pub",
    "c": 1
  },
  {
    "last_only_name": "Brian Pool Insurance Agency",
    "c": 1
  },
  {
    "last_only_name": "Butler Domestic Services, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Camic Johnson",
    "c": 1
  },
  {
    "last_only_name": "Camic Johnson Ltd. Attorney at Law",
    "c": 1
  },
  {
    "last_only_name": "Camic Johnson, Ltd",
    "c": 1
  },
  {
    "last_only_name": "Cano Container",
    "c": 1
  },
  {
    "last_only_name": "Carniceria El Paso Grande Corp.",
    "c": 1
  },
  {
    "last_only_name": "CASA BLANCA",
    "c": 1
  },
  {
    "last_only_name": "CDH Law Group",
    "c": 1
  },
  {
    "last_only_name": "Cemcon Ltd",
    "c": 1
  },
  {
    "last_only_name": "Cemcon, LTD",
    "c": 1
  },
  {
    "last_only_name": "CEMCON, Ltd.",
    "c": 4
  },
  {
    "last_only_name": "Chehar Corp Dba Dunkin Donuts",
    "c": 1
  },
  {
    "last_only_name": "Chicago Marble Company",
    "c": 1
  },
  {
    "last_only_name": "Chico's Towing",
    "c": 1
  },
  {
    "last_only_name": "Cinco De Mayo Bakery",
    "c": 4
  },
  {
    "last_only_name": "Cinco de Mayo Bakery, Inc",
    "c": 3
  },
  {
    "last_only_name": "Citizens for Carl Schultz",
    "c": 1
  },
  {
    "last_only_name": "Citizens for Linda Holmes",
    "c": 19
  },
  {
    "last_only_name": "Citizens for Tonia Khouri",
    "c": 3
  },
  {
    "last_only_name": "Citizens for Willie Mayes",
    "c": 3
  },
  {
    "last_only_name": "CityFive Development",
    "c": 1
  },
  {
    "last_only_name": "Claim Services Inc",
    "c": 1
  },
  {
    "last_only_name": "CMT",
    "c": 6
  },
  {
    "last_only_name": "CMT Consulting Engineers",
    "c": 1
  },
  {
    "last_only_name": "Coffman Truck Sales Inc",
    "c": 1
  },
  {
    "last_only_name": "COFFMAN TRUCK SALES, INC.",
    "c": 4
  },
  {
    "last_only_name": "Condon Trust",
    "c": 1
  },
  {
    "last_only_name": "Construction & Demolition Recycling Association Illinois NFP",
    "c": 1
  },
  {
    "last_only_name": "Control Solutions, LLC",
    "c": 1
  },
  {
    "last_only_name": "Cordogan Clark & Associates",
    "c": 8
  },
  {
    "last_only_name": "Cordogan, Clark and Associates",
    "c": 1
  },
  {
    "last_only_name": "Corporate West",
    "c": 2
  },
  {
    "last_only_name": "Countryside Care Centre",
    "c": 14
  },
  {
    "last_only_name": "Craftsman Tool & Mold",
    "c": 1
  },
  {
    "last_only_name": "Crawford Murphy & Tilly Inc.",
    "c": 8
  },
  {
    "last_only_name": "Crawford, Murphy & Tilly",
    "c": 4
  },
  {
    "last_only_name": "Crawford, Murphy & Tilly Inc",
    "c": 1
  },
  {
    "last_only_name": "Crawford, Murphy & Tilly, Inc",
    "c": 2
  },
  {
    "last_only_name": "Crawford, Murphy & Tilly, Inc.",
    "c": 3
  },
  {
    "last_only_name": "Crawford, Murphy & Tilly, LLC.Consulting Engineers",
    "c": 3
  },
  {
    "last_only_name": "Crawford,Murphy & Tilly, Inc.",
    "c": 4
  },
  {
    "last_only_name": "Creekside Farms LLC",
    "c": 1
  },
  {
    "last_only_name": "Cruz Investments and Wealth Mgmt",
    "c": 1
  },
  {
    "last_only_name": "Cyberdyne Masonry Corp.",
    "c": 1
  },
  {
    "last_only_name": "D'ESCOTO Inc.",
    "c": 2
  },
  {
    "last_only_name": "Daniel  F. Kleneke Attoney at Law",
    "c": 1
  },
  {
    "last_only_name": "Daniel Dolan Hoopeston Properties",
    "c": 1
  },
  {
    "last_only_name": "Defibrillators, Inc",
    "c": 1
  },
  {
    "last_only_name": "Dependable Contracting Services",
    "c": 1
  },
  {
    "last_only_name": "Deuchler, Walter E. Associates, Inc.",
    "c": 3
  },
  {
    "last_only_name": "Dixon Gallagher Chami LLC",
    "c": 1
  },
  {
    "last_only_name": "Doctors On Site, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Dolan & Murphy Inc. Real Estate",
    "c": 2
  },
  {
    "last_only_name": "Dolan & Murphy Managment, L.C.C.",
    "c": 1
  },
  {
    "last_only_name": "Dolan & Murphy, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Dolan Family Farms LLC",
    "c": 2
  },
  {
    "last_only_name": "Dolan-Lies, LLC",
    "c": 1
  },
  {
    "last_only_name": "DPH Aurora Properties LLC Indian Meadows",
    "c": 1
  },
  {
    "last_only_name": "Durango Painting, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Earthmover CU",
    "c": 9
  },
  {
    "last_only_name": "El Patron",
    "c": 1
  },
  {
    "last_only_name": "Elgin Comm'ty Coll. Faculty, IFT Local 3791, dues",
    "c": 10
  },
  {
    "last_only_name": "Exxon",
    "c": 1
  },
  {
    "last_only_name": "Farmer Employees & Agents PAC",
    "c": 2
  },
  {
    "last_only_name": "Farmers Employee & Agent PAC",
    "c": 1
  },
  {
    "last_only_name": "Farmers Employee and Agent PAC",
    "c": 5
  },
  {
    "last_only_name": "Farmers Employee and Agent PAC Illinois",
    "c": 2
  },
  {
    "last_only_name": "Farmers Employees & Agents PAC",
    "c": 2
  },
  {
    "last_only_name": "Farmers Employees and Agents",
    "c": 3
  },
  {
    "last_only_name": "Farmers Employees and Agents PAC",
    "c": 14
  },
  {
    "last_only_name": "Farmers Employees and Agents Political Action Committee",
    "c": 1
  },
  {
    "last_only_name": "Farmers Insurance Employees & Agents PAC",
    "c": 1
  },
  {
    "last_only_name": "Farmers PAC",
    "c": 1
  },
  {
    "last_only_name": "Farmers, Employees and Agents PAC",
    "c": 1
  },
  {
    "last_only_name": "Feltes Clinic of Chiropractic and Accupuncture",
    "c": 1
  },
  {
    "last_only_name": "Foster, Bill for Congress Committee",
    "c": 1
  },
  {
    "last_only_name": "Fostering Progress PAC",
    "c": 2
  },
  {
    "last_only_name": "Fox Valley Bldg & Trades",
    "c": 1
  },
  {
    "last_only_name": "Fox Valley Bldg. Trades PAC",
    "c": 2
  },
  {
    "last_only_name": "Fox Valley Building & Construction Trades",
    "c": 1
  },
  {
    "last_only_name": "Fox Valley Building Trades",
    "c": 5
  },
  {
    "last_only_name": "Fox Valley Building Trades PAC",
    "c": 3
  },
  {
    "last_only_name": "Fox Valley Building Trades PAC Fund",
    "c": 11
  },
  {
    "last_only_name": "Fox Valley Medical Associates",
    "c": 1
  },
  {
    "last_only_name": "Fox Valley Park District",
    "c": 1
  },
  {
    "last_only_name": "Fox Valley Park Foundation",
    "c": 2
  },
  {
    "last_only_name": "Friends for Lauzen",
    "c": 10
  },
  {
    "last_only_name": "Friends for Rachel Ossyra",
    "c": 1
  },
  {
    "last_only_name": "Friends for Theresa Barreiro",
    "c": 1
  },
  {
    "last_only_name": "Friends of  Linda Chapa Lavia",
    "c": 1
  },
  {
    "last_only_name": "Friends of Brian Pollack",
    "c": 2
  },
  {
    "last_only_name": "Friends of Brian Pollock",
    "c": 2
  },
  {
    "last_only_name": "Friends of Linda Chapa La Via",
    "c": 2
  },
  {
    "last_only_name": "Friends of Linda Chapa LaVia",
    "c": 7
  },
  {
    "last_only_name": "Friends of Linda Chapa-LaVia",
    "c": 3
  },
  {
    "last_only_name": "Friends of Stephanie Kifowit",
    "c": 10
  },
  {
    "last_only_name": "Friends of Tom Weisner",
    "c": 1
  },
  {
    "last_only_name": "Frost Electric Co.",
    "c": 1
  },
  {
    "last_only_name": "Furry Babies Fox Valley Inc",
    "c": 2
  },
  {
    "last_only_name": "Galena Centre TIC",
    "c": 2
  },
  {
    "last_only_name": "GASLITE MANOR BANQUETS",
    "c": 1
  },
  {
    "last_only_name": "Gaslite Manor Courtyard West",
    "c": 3
  },
  {
    "last_only_name": "Geneva Construction",
    "c": 5
  },
  {
    "last_only_name": "Geneva Construction Co",
    "c": 3
  },
  {
    "last_only_name": "Gil Law Group",
    "c": 1
  },
  {
    "last_only_name": "Glasshopper Schor Glass",
    "c": 1
  },
  {
    "last_only_name": "Global Executive Talent Search Services",
    "c": 1
  },
  {
    "last_only_name": "Greater Chicagoland Chapter of Credit Unions",
    "c": 2
  },
  {
    "last_only_name": "Green T",
    "c": 2
  },
  {
    "last_only_name": "Green T Lawn Care",
    "c": 4
  },
  {
    "last_only_name": "Green T Lawn Care, Inc",
    "c": 1
  },
  {
    "last_only_name": "Green T Lawn Care, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Green T Services, Inc",
    "c": 1
  },
  {
    "last_only_name": "Grove of Fox Valley",
    "c": 18
  },
  {
    "last_only_name": "HBA - Northern Illinois",
    "c": 12
  },
  {
    "last_only_name": "Hearthland Recycling-Aurora CCDD LLC",
    "c": 2
  },
  {
    "last_only_name": "Heartland Recycling-Aurora CCDD LLC",
    "c": 3
  },
  {
    "last_only_name": "Heartland Recycling-Aurora LLC",
    "c": 2
  },
  {
    "last_only_name": "Hills Banquet",
    "c": 1
  },
  {
    "last_only_name": "Holmes, Citizens for Linda",
    "c": 1
  },
  {
    "last_only_name": "Hoopeston Properties",
    "c": 1
  },
  {
    "last_only_name": "Hospitality Guru Group",
    "c": 1
  },
  {
    "last_only_name": "Houghtaling Insurance Agency",
    "c": 2
  },
  {
    "last_only_name": "Hyundai Motor America",
    "c": 2
  },
  {
    "last_only_name": "I,B.E.W. Local No. 461",
    "c": 1
  },
  {
    "last_only_name": "I.B.E.W.  Local  461",
    "c": 6
  },
  {
    "last_only_name": "I.B.E.W. Local No,. 461",
    "c": 1
  },
  {
    "last_only_name": "IBEW #19",
    "c": 1
  },
  {
    "last_only_name": "IBEW local 461",
    "c": 2
  },
  {
    "last_only_name": "IBEW Local 461 PAC Voluntary Fund",
    "c": 1
  },
  {
    "last_only_name": "ILBA Area 58",
    "c": 1
  },
  {
    "last_only_name": "Illco, Inc",
    "c": 3
  },
  {
    "last_only_name": "Illinois Auto Electric Co.",
    "c": 1
  },
  {
    "last_only_name": "Illinois Farmers Insurance",
    "c": 4
  },
  {
    "last_only_name": "Incomex Tax Service #2",
    "c": 1
  },
  {
    "last_only_name": "Injection & Waterproofing Systems, Inc",
    "c": 1
  },
  {
    "last_only_name": "Inspire Realty Partners",
    "c": 1
  },
  {
    "last_only_name": "International Brotherhood of Electrical Workers",
    "c": 1
  },
  {
    "last_only_name": "International Transload Logistics Inc.",
    "c": 1
  },
  {
    "last_only_name": "Iron Gate Motor Condos",
    "c": 1
  },
  {
    "last_only_name": "Iron Workers Local #393",
    "c": 1
  },
  {
    "last_only_name": "Ironworkers  Local  # 393",
    "c": 3
  },
  {
    "last_only_name": "Ironworkers Local #393",
    "c": 1
  },
  {
    "last_only_name": "Irvin for Aurora",
    "c": 1
  },
  {
    "last_only_name": "Irvin for Mayor",
    "c": 1
  },
  {
    "last_only_name": "IUPAT (Painters Union)-PAC-DC30",
    "c": 1
  },
  {
    "last_only_name": "J & J Construction of Illinois",
    "c": 1
  },
  {
    "last_only_name": "John P. Bederka, Jr. - DBA Tox-I-Cull Associates Toxicological Health ",
    "c": 1
  },
  {
    "last_only_name": "John's Beef n Beer",
    "c": 2
  },
  {
    "last_only_name": "JTE Family Properties",
    "c": 1
  },
  {
    "last_only_name": "JTE Family Properties LLC",
    "c": 1
  },
  {
    "last_only_name": "JTE Family Properties, L.L.C.",
    "c": 1
  },
  {
    "last_only_name": "Judd Lofchie & Associates",
    "c": 1
  },
  {
    "last_only_name": "Kalami, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Kane County Public Employees",
    "c": 3
  },
  {
    "last_only_name": "Kelmscott Communications, Inc.",
    "c": 1
  },
  {
    "last_only_name": "KGK Management, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Khouri For Congress",
    "c": 3
  },
  {
    "last_only_name": "Kinnally Flaherty Krentz & Loran, PC",
    "c": 6
  },
  {
    "last_only_name": "Kinnally Flaherty Krentz Loran Hodge",
    "c": 1
  },
  {
    "last_only_name": "Kinnally Flaherty Krentz Loran Hodge & Masur, PC Attorneys At Law Oper",
    "c": 2
  },
  {
    "last_only_name": "Kinnally Flaherty Krentz Loran Hodge Masur",
    "c": 2
  },
  {
    "last_only_name": "Kinnally, Flaherty, Krentz, Loran, Hodge, ...",
    "c": 1
  },
  {
    "last_only_name": "Kinnally, Flaherty, Krentz,et al",
    "c": 1
  },
  {
    "last_only_name": "Klein Hall CPAs LLC",
    "c": 2
  },
  {
    "last_only_name": "Konen Insurance Agency",
    "c": 1
  },
  {
    "last_only_name": "Konen Insurance Agency, Inc",
    "c": 2
  },
  {
    "last_only_name": "Kwik Store Food Mart",
    "c": 2
  },
  {
    "last_only_name": "La Chicanita Bakery",
    "c": 1
  },
  {
    "last_only_name": "La Chicanita Bakery, Inc.",
    "c": 1
  },
  {
    "last_only_name": "La Quinta de los Reyes",
    "c": 1
  },
  {
    "last_only_name": "La Villita",
    "c": 1
  },
  {
    "last_only_name": "laboers international",
    "c": 1
  },
  {
    "last_only_name": "Larios La Central Bakery",
    "c": 1
  },
  {
    "last_only_name": "Latin American Democratic Organization",
    "c": 2
  },
  {
    "last_only_name": "Law Elderlaw LLP",
    "c": 1
  },
  {
    "last_only_name": "Law Elderlaw, LLP",
    "c": 2
  },
  {
    "last_only_name": "Law Office of David Lee",
    "c": 3
  },
  {
    "last_only_name": "Law Office of Latoyia M. Kimbrough",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Liam Dixon",
    "c": 2
  },
  {
    "last_only_name": "Law Office of Michael John Ppulakidas, P.C.",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Michael Poulakidas",
    "c": 4
  },
  {
    "last_only_name": "Law Office of Michael Poulakidas PC",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Michel John Poulakidas, PC",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Richard C. Irvin",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Richard Irvin",
    "c": 1
  },
  {
    "last_only_name": "Law Office of Vincent S. Cook",
    "c": 1
  },
  {
    "last_only_name": "Law Office Richard Irvin",
    "c": 1
  },
  {
    "last_only_name": "Law Office Richard Irvin & Associates",
    "c": 1
  },
  {
    "last_only_name": "Law Offices of David Lee",
    "c": 2
  },
  {
    "last_only_name": "Law Offices of David Stevens",
    "c": 1
  },
  {
    "last_only_name": "Law Offices of Michael C. Funkey, P.C.",
    "c": 2
  },
  {
    "last_only_name": "Law Offices of Michael John Poulakidas",
    "c": 1
  },
  {
    "last_only_name": "Law Offices of Peter D. Cullotta",
    "c": 1
  },
  {
    "last_only_name": "Lazaro RS Corp.",
    "c": 2
  },
  {
    "last_only_name": "LED Retrofit",
    "c": 1
  },
  {
    "last_only_name": "Luse Thermal Tech LLC",
    "c": 1
  },
  {
    "last_only_name": "M&MJ Holdings LLC",
    "c": 1
  },
  {
    "last_only_name": "Mai Quesi Inc.",
    "c": 1
  },
  {
    "last_only_name": "Management Solutions of Illinois",
    "c": 2
  },
  {
    "last_only_name": "Mankus & Marchan",
    "c": 2
  },
  {
    "last_only_name": "Max Madsen's Aurora Mitsubishi",
    "c": 3
  },
  {
    "last_only_name": "McDonald's Illinois Owner Operator PAC",
    "c": 1
  },
  {
    "last_only_name": "McKesson",
    "c": 1
  },
  {
    "last_only_name": "Meyers Motor Transportation",
    "c": 1
  },
  {
    "last_only_name": "Michelassi Consultants, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Mickey, Wilson, Weiler, Renzi & Andersson, P.C.",
    "c": 1
  },
  {
    "last_only_name": "Mickey, Wilson, Weiler, Renzi, Andersson",
    "c": 1
  },
  {
    "last_only_name": "Mid America Underground, LLC",
    "c": 1
  },
  {
    "last_only_name": "Mid-America Underground, LLC",
    "c": 4
  },
  {
    "last_only_name": "Mid-America Water Inc.",
    "c": 1
  },
  {
    "last_only_name": "Mid-American Water, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Midwest Management II, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Midwest Management Inc",
    "c": 1
  },
  {
    "last_only_name": "Midwest Management, Inc dba Hampton Inn & Suites",
    "c": 1
  },
  {
    "last_only_name": "Midwest Management, Inc.",
    "c": 2
  },
  {
    "last_only_name": "Midwest Management,INC",
    "c": 1
  },
  {
    "last_only_name": "Midwest Managment Inc  dba Hampton Inn & Suites",
    "c": 2
  },
  {
    "last_only_name": "Mike and Denise's Pizzeria and Pub",
    "c": 1
  },
  {
    "last_only_name": "Mike Franklin and Associates",
    "c": 2
  },
  {
    "last_only_name": "Miller Carbonic",
    "c": 3
  },
  {
    "last_only_name": "Mitchell Road Account",
    "c": 4
  },
  {
    "last_only_name": "Monarrez Properties LLC",
    "c": 1
  },
  {
    "last_only_name": "Mother's Pancake House",
    "c": 1
  },
  {
    "last_only_name": "My Casa Construction",
    "c": 1
  },
  {
    "last_only_name": "Naperville Township Republican Organization",
    "c": 1
  },
  {
    "last_only_name": "Napleton's Valley Hyundai",
    "c": 4
  },
  {
    "last_only_name": "New Life Construction Plus Inc",
    "c": 2
  },
  {
    "last_only_name": "Nicor",
    "c": 10
  },
  {
    "last_only_name": "Nicor Gas",
    "c": 13
  },
  {
    "last_only_name": "NICOR GAS CO",
    "c": 1
  },
  {
    "last_only_name": "Nine Development Group Corp",
    "c": 1
  },
  {
    "last_only_name": "Northern Lights Development/Keith Gregory",
    "c": 1
  },
  {
    "last_only_name": "O'Malley's Pub and Eatery",
    "c": 1
  },
  {
    "last_only_name": "Oakhurst Plaza Assoc-Aurora LLC",
    "c": 1
  },
  {
    "last_only_name": "Painters  District  Council  # 30",
    "c": 10
  },
  {
    "last_only_name": "PAINTERS  DISTRICT COUNCIL #30",
    "c": 1
  },
  {
    "last_only_name": "Painters & Allied Trades District Council #30",
    "c": 2
  },
  {
    "last_only_name": "Painters Dist #30 PAC",
    "c": 1
  },
  {
    "last_only_name": "Painters Dist. Council #30 PAC",
    "c": 1
  },
  {
    "last_only_name": "Painters Dist. Council NO. 30 LMIDF PAC FUND",
    "c": 1
  },
  {
    "last_only_name": "Painters Dist. Council No. 30 PAC",
    "c": 1
  },
  {
    "last_only_name": "Painters Dist. Councl No 30 LMIDF PAC Fund",
    "c": 1
  },
  {
    "last_only_name": "Painters Distict Council No. 30",
    "c": 2
  },
  {
    "last_only_name": "Painters District Council",
    "c": 4
  },
  {
    "last_only_name": "Painters District Council #30",
    "c": 4
  },
  {
    "last_only_name": "Painters District Council #30 PAC",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council 30",
    "c": 5
  },
  {
    "last_only_name": "Painters District Council 30 LMIDF Pac Fund",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council 30 PAC",
    "c": 4
  },
  {
    "last_only_name": "Painters District Council No 30",
    "c": 6
  },
  {
    "last_only_name": "Painters District Council No 30 LMIDF",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council No 30 LMIDF PAC Fund",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council No 30 PAC",
    "c": 4
  },
  {
    "last_only_name": "Painters District Council No. 30",
    "c": 491
  },
  {
    "last_only_name": "Painters District Council No. 30 L.M.I.D.F.",
    "c": 3
  },
  {
    "last_only_name": "Painters District Council No. 30 LMIDF PAC fund",
    "c": 2
  },
  {
    "last_only_name": "Painters District Council No. 30 PAC",
    "c": 3
  },
  {
    "last_only_name": "Painters District Council No. 30 PAC Fund",
    "c": 3
  },
  {
    "last_only_name": "Painters District Council No. 30 Polical Action Account",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council No. 30 Political Action Account",
    "c": 8
  },
  {
    "last_only_name": "Painters District Council No. 31 LMIDF",
    "c": 1
  },
  {
    "last_only_name": "Painters District Council No.30 (IUPAT)",
    "c": 1
  },
  {
    "last_only_name": "Painters Union D.C. #30",
    "c": 1
  },
  {
    "last_only_name": "Paiters DC 30",
    "c": 1
  },
  {
    "last_only_name": "Paolello and Associates INC",
    "c": 1
  },
  {
    "last_only_name": "Park Vending",
    "c": 8
  },
  {
    "last_only_name": "Patrona, Inc",
    "c": 1
  },
  {
    "last_only_name": "Petfish",
    "c": 1
  },
  {
    "last_only_name": "Piedra Azul, Inc",
    "c": 2
  },
  {
    "last_only_name": "Pipefitters Assoc. Local 597 PAC",
    "c": 1
  },
  {
    "last_only_name": "POLY USA INC",
    "c": 3
  },
  {
    "last_only_name": "Poly USA INC.",
    "c": 1
  },
  {
    "last_only_name": "Pomegranate Restaurant",
    "c": 2
  },
  {
    "last_only_name": "Pomergrante Restaurant",
    "c": 1
  },
  {
    "last_only_name": "Ponce & Reyna Ins Financial Services LLC",
    "c": 1
  },
  {
    "last_only_name": "Porro Niermann & Petersen LLC",
    "c": 1
  },
  {
    "last_only_name": "Porro, Law Office of Michelle",
    "c": 1
  },
  {
    "last_only_name": "Porro, Niermann & Petersen",
    "c": 1
  },
  {
    "last_only_name": "Porro, Niermann & Petersen, LLC",
    "c": 1
  },
  {
    "last_only_name": "Prairie State Gaming",
    "c": 4
  },
  {
    "last_only_name": "Puckett Electric, Co",
    "c": 1
  },
  {
    "last_only_name": "Q1 Technologies, Inc",
    "c": 2
  },
  {
    "last_only_name": "Rachel's Learning Center",
    "c": 3
  },
  {
    "last_only_name": "RC Wegman Construction Company",
    "c": 3
  },
  {
    "last_only_name": "Red Fox, Inc.",
    "c": 1
  },
  {
    "last_only_name": "REGL dba Meineke Car Care #201",
    "c": 1
  },
  {
    "last_only_name": "Renaissance Management Co",
    "c": 3
  },
  {
    "last_only_name": "Rent A Gardener",
    "c": 2
  },
  {
    "last_only_name": "Richard Caldarozzo Atty At Law",
    "c": 2
  },
  {
    "last_only_name": "Ridgeway Partners",
    "c": 2
  },
  {
    "last_only_name": "RUDDY AND KING, LLC",
    "c": 2
  },
  {
    "last_only_name": "Salon 21 Spa and Boutique",
    "c": 2
  },
  {
    "last_only_name": "Saville",
    "c": 2
  },
  {
    "last_only_name": "Self & Russelburg Ltd. 07-14",
    "c": 1
  },
  {
    "last_only_name": "Semper Fi Yard Service",
    "c": 1
  },
  {
    "last_only_name": "Semper Fi Yard Services",
    "c": 1
  },
  {
    "last_only_name": "Semper Fi Yard Services Inc",
    "c": 1
  },
  {
    "last_only_name": "Semper Fi Yard Services, Inc.",
    "c": 2
  },
  {
    "last_only_name": "Sequoia General Contracting",
    "c": 1
  },
  {
    "last_only_name": "Sequoia General Contracting Corp.",
    "c": 2
  },
  {
    "last_only_name": "Sequoia Generl Contracting Corp",
    "c": 1
  },
  {
    "last_only_name": "SLJ Communications, Inc",
    "c": 1
  },
  {
    "last_only_name": "Small Business Accounting Co.",
    "c": 1
  },
  {
    "last_only_name": "Spartan House",
    "c": 1
  },
  {
    "last_only_name": "Speers Reuland Cibulskis",
    "c": 1
  },
  {
    "last_only_name": "Speers, Reuland, & Cibulskis, P.C.",
    "c": 1
  },
  {
    "last_only_name": "State Farm Insurance",
    "c": 1
  },
  {
    "last_only_name": "STATE MECHANICAL SERVICES",
    "c": 1
  },
  {
    "last_only_name": "Structural Strategies Inc.",
    "c": 1
  },
  {
    "last_only_name": "Supermercado El Guero De Aurora, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Symphony of Orchard Valley",
    "c": 5
  },
  {
    "last_only_name": "T Mobile",
    "c": 1
  },
  {
    "last_only_name": "T&L Manufacturing",
    "c": 1
  },
  {
    "last_only_name": "TAG Fitness, LLC",
    "c": 1
  },
  {
    "last_only_name": "Tecalitlan Restaurant",
    "c": 1
  },
  {
    "last_only_name": "Tee Jay Service Company",
    "c": 1
  },
  {
    "last_only_name": "Teka MS LLC",
    "c": 1
  },
  {
    "last_only_name": "Tezla Services",
    "c": 2
  },
  {
    "last_only_name": "THE CAR STORE AUTO CORP.",
    "c": 2
  },
  {
    "last_only_name": "The Gil Law Group, P.C",
    "c": 2
  },
  {
    "last_only_name": "The Law Office of Richard C. Irvin",
    "c": 1
  },
  {
    "last_only_name": "The Law Office of Richard C. Irvin & Associates",
    "c": 1
  },
  {
    "last_only_name": "The Law Office of Richard C. Irvin & Associates, L",
    "c": 4
  },
  {
    "last_only_name": "The Law Office of Richard Irvin",
    "c": 1
  },
  {
    "last_only_name": "The Law Offices of Carmel Husemam, LLC",
    "c": 1
  },
  {
    "last_only_name": "The Luse Companies",
    "c": 1
  },
  {
    "last_only_name": "The Okonite Company",
    "c": 1
  },
  {
    "last_only_name": "The Support Companies, LLC",
    "c": 1
  },
  {
    "last_only_name": "Themes Architecture",
    "c": 1
  },
  {
    "last_only_name": "Themes Architecture Inc",
    "c": 8
  },
  {
    "last_only_name": "Themes Architecture Inc.",
    "c": 2
  },
  {
    "last_only_name": "Tire Management, Inc.",
    "c": 3
  },
  {
    "last_only_name": "TJ Wherm Development",
    "c": 1
  },
  {
    "last_only_name": "Total Living Network",
    "c": 3
  },
  {
    "last_only_name": "Toyota Motor Distributors",
    "c": 4
  },
  {
    "last_only_name": "Tri- County Excavation & Construction Inc",
    "c": 1
  },
  {
    "last_only_name": "Tri-County Excavation & Construction Inc",
    "c": 1
  },
  {
    "last_only_name": "Tri-County Excavation and Construction",
    "c": 3
  },
  {
    "last_only_name": "Trilan Investments",
    "c": 1
  },
  {
    "last_only_name": "UBC Local 916",
    "c": 2
  },
  {
    "last_only_name": "United Parcel Service (UPS)",
    "c": 1
  },
  {
    "last_only_name": "United Parcel Service, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Valley Honda",
    "c": 3
  },
  {
    "last_only_name": "Vermeer-Illinois, Inc",
    "c": 1
  },
  {
    "last_only_name": "Walter Deuchler Assoc. Consulting Engineers",
    "c": 1
  },
  {
    "last_only_name": "Walter E. Deuchler Associates, Inc.",
    "c": 1
  },
  {
    "last_only_name": "Water Products Company of Aurora, Inc",
    "c": 1
  },
  {
    "last_only_name": "Westphal Chevrolet",
    "c": 5
  },
  {
    "last_only_name": "Whitt Law LLC",
    "c": 1
  },
  {
    "last_only_name": "Windy City Distributing, LLC",
    "c": 42
  },
  {
    "last_only_name": "Woodruff & Johnson",
    "c": 3
  },
  {
    "last_only_name": "Woodruff Johnson & Evans",
    "c": 1
  },
  {
    "last_only_name": "Woodruff Johnson & Palermo",
    "c": 2
  },
  {
    "last_only_name": "Woodruff, Johnson & Palermo",
    "c": 1
  },
  {
    "last_only_name": "Youngren's Inc.",
    "c": 1
  }
]

def normalize(name)
  res = name.gsub('.', '')
  res = res.gsub(/[,#\/\-]/, ' ')
  res = res.gsub(/ (inc|llc|llp|group|ltd|pc|corp|corporation|co|company|no)(?= |$)/i, ' ')
  res = res.gsub(/\(.*\)/, '')
  res = res.gsub(/ and |&/i, ' & ')
  res = res.gsub(/(^| )int'?l( |$)/i, ' International ')
  res = res.gsub(/(^| )il( |$)/i, ' Illinois ')
  res = res.gsub(/(^| )so( |$)/i, ' Southern ')
  res = res.gsub(/ comm( |$)/i, ' Committee ')
  res = res.gsub(/ const( |$)/i, ' Construction ')
  res = res.gsub(/ svc( |$)/i, ' Services ')
  res = res.gsub(/ dist( |$)/i, ' Distributing ')
  res = res.gsub(/ bldg( |$)/i, ' Building ')
  res = res.gsub(/ edu?( |$)/i, ' Education ')
  res = res.gsub(/ PAC( |$)/i, ' Political Action Committee ')
  res = res.gsub(/(^| )assoc( |$)/i, ' Association ')
  res = res.squeeze(' ').strip
  res.empty? ? name : res
end

def do_it
  dl = DamerauLevenshtein
  @source_data.each do |hash|
    main = normalize(hash[:last_only_name])
    @source_data.each do |h|
      fixed = normalize(h[:last_only_name])
      dist = dl.distance(main.downcase, fixed.downcase)
      perc = 1 - dist.to_f/[main.size, fixed.size].min
      p "#{main} <> #{fixed}: #{dist} -- #{perc}" if perc > 0.8 && perc < 1 && dist < 10
    end
  end
end

do_it

def test_nums
  dl = DamerauLevenshtein
  a = "Painters Council District"
  b = "Painters District Council"
  p dl.distance(a, b)
  p a.gsub(/\D+/, '') == b.gsub(/\D+/, '')
end
