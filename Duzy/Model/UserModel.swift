//
//  UserModel.swift
//  TVOSPOC
//
//  Created by Rajshekar on 17/02/20.
//  Copyright © 2020 Rajshekar. All rights reserved.
//

import Foundation

// MARK: - UserList
struct UserList: Codable {
    let errorCode: Int?
    let college: College?
    
    enum CodingKeys: String, CodingKey {
        case errorCode = "Error Code"
        case college = "College"
    }
}

// MARK: - College
struct College: Codable {
    let collegeSummary: CollegeSummary?
    let location: Location?
    let similarSchools: [SimilarSchool]?
    let testScoresAndGrades: TestScoresAndGrades?
    let freshManProfile: FreshManProfile?
    let admissions: Admissions?
    let calendar: Calendar?
    let intendedStudy: IntendedStudy?
    let feesAndFinancialAids: FeesAndFinancialAids?
    let sports: Sports?
    let weather: [Weather]?
    let payScaleROIRankings: [PayScaleROIRanking]?
    let prominentAlumini: [ProminentAlumini]?
    let linksAndAddresses: [LinksAndAddress]?
    let quickFacts: QuickFacts?
    let majors: [Major]?
    
    enum CodingKeys: String, CodingKey {
        case collegeSummary = "CollegeSummary"
        case location = "Location"
        case similarSchools = "SimilarSchools"
        case testScoresAndGrades = "TestScoresAndGrades"
        case freshManProfile = "FreshManProfile"
        case admissions = "Admissions"
        case calendar = "Calendar"
        case intendedStudy = "IntendedStudy"
        case feesAndFinancialAids = "FeesAndFinancialAids"
        case sports = "Sports"
        case weather = "Weather"
        case payScaleROIRankings = "PayScaleROIRankings"
        case prominentAlumini = "ProminentAlumini"
        case linksAndAddresses = "LinksAndAddresses"
        case quickFacts = "QuickFacts"
        case majors
    }
}

// MARK: - Admissions
struct Admissions: Codable {
    let admissionCodes: AdmissionCodes?
    let admission, recommendations, interviews: [Admission]?
    
    enum CodingKeys: String, CodingKey {
        case admissionCodes = "AdmissionCodes"
        case admission = "Admission"
        case recommendations = "Recommendations"
        case interviews = "Interviews"
    }
}

// MARK: - Admission
struct Admission: Codable {
    let admissionsOptionID, collegeID, optionNameID, optionValueID: Int?
    let badgeID: Int?
    let optionName: String?
    let optionValue: OptionValue?
    let badgeValue: BadgeValue?
    
    enum CodingKeys: String, CodingKey {
        case admissionsOptionID
        case collegeID = "collegeId"
        case optionNameID, optionValueID, badgeID, optionName, optionValue, badgeValue
    }
}

enum BadgeValue: String, Codable {
    case badgeNO = "Badge-NO"
    case badgeOPTIONAL = "Badge-OPTIONAL"
    case badgeYES = "Badge-YES"
}

enum OptionValue: String, Codable {
    case no = "NO"
    case yes = "YES"
}

// MARK: - AdmissionCodes
struct AdmissionCodes: Codable {
    let satCode, actCode: String?
}

// MARK: - Calendar
struct Calendar: Codable {
    let mostImportantDates, events: [Event]?
    
    enum CodingKeys: String, CodingKey {
        case mostImportantDates = "MostImportantDates"
        case events = "Events"
    }
}

// MARK: - Event
struct Event: Codable {
    let collegeCalendarID, collegeID: Int?
    let eventName: String?
    let eventDescription: JSONNull?
    let eventDate: String?
    let position: Int?
    let mostImportantDate: Bool?
    
    enum CodingKeys: String, CodingKey {
        case collegeCalendarID = "collegeCalendarId"
        case collegeID = "collegeId"
        case eventName, eventDescription, eventDate, position, mostImportantDate
    }
}

// MARK: - CollegeSummary
struct CollegeSummary: Codable {
    let collegeID, schoolID, masterID: Int?
    let collegeName, nickName: String?
    let collegeTypeID, accessTypeID, collegeAreaID: Int?
    let collegeLogoPath: String?
    let collegeWebsiteURL: String?
    let webLinks: JSONNull?
    let streetName, city, state: String?
    let country: JSONNull?
    let zip, telephoneNumber, officeEmailAddress, collegeLatitude: String?
    let collegeLongitude: String?
    let freshmen, totalUndergrads: Int?
    let acceptance: Double?
    let averageGpa: String?
    let averageSat, averageAct: Int?
    let weatherStationID, classSize: JSONNull?
    let studentFacultyRatio: String?
    let sportsIntramurals: Bool?
    let sportsMascot: String?
    let lastUpdated: Int?
    let collegeSATCODE, collegeACTCODE, appleLatitude, appleLongitude: String?
    let isActive: Bool?
    let newAverageSat, ipedID: Int?
    
    enum CodingKeys: String, CodingKey {
        case collegeID = "collegeId"
        case schoolID, masterID, collegeName, nickName
        case collegeTypeID = "collegeTypeId"
        case accessTypeID, collegeAreaID, collegeLogoPath
        case collegeWebsiteURL = "collegeWebsiteUrl"
        case webLinks, streetName, city, state, country, zip, telephoneNumber, officeEmailAddress, collegeLatitude, collegeLongitude, freshmen, totalUndergrads, acceptance, averageGpa, averageSat, averageAct
        case weatherStationID = "weatherStationId"
        case classSize, studentFacultyRatio, sportsIntramurals, sportsMascot, lastUpdated, collegeSATCODE, collegeACTCODE, appleLatitude, appleLongitude, isActive, newAverageSat
        case ipedID = "ipedId"
    }
}

// MARK: - FeesAndFinancialAids
struct FeesAndFinancialAids: Codable {
    let outOfState, inState: [State]?
    let averageFinancialAid, receivingFinancialAid, avgDebtUponGraduation, averageNeedMet: Int?
    let netPriceHouseholdIncome: [NetPriceHouseholdIncome]?
    let averageNetPrice, averageMeritAward, receivingMeritAwards: Int?
    let netPriceCalculatorURL: String?
    
    enum CodingKeys: String, CodingKey {
        case outOfState = "OutOfState"
        case inState = "InState"
        case averageFinancialAid = "AverageFinancialAid"
        case receivingFinancialAid = "ReceivingFinancialAid"
        case avgDebtUponGraduation = "AvgDebtUponGraduation"
        case averageNeedMet = "AverageNeedMet"
        case netPriceHouseholdIncome = "NetPriceHouseholdIncome"
        case averageNetPrice = "AverageNetPrice"
        case averageMeritAward, receivingMeritAwards, netPriceCalculatorURL
    }
}

// MARK: - State
struct State: Codable {
    let collegeFeesID, collegeID, sysFeesStructureID, fees: Int?
    let sysFeesStructureName: String?
}

// MARK: - NetPriceHouseholdIncome
struct NetPriceHouseholdIncome: Codable {
    let netPriceHouseholdIncomeID, collegeID: Int?
    let incomeRange: String?
    let incomeValue: Int?
}

// MARK: - FreshManProfile
struct FreshManProfile: Codable {
    let profile: [Profile]?
    let genderPercentage: GenderPercentage?
    let graduationRate: GraduationRate?
    let geographics: [Geographic]?
    let greekLife: [GreekLife]?
    let mostRepresentedStates: MostRepresentedStates?
    let ethncity: [Ethncity]?
    let religiousAffiliation: String?
    
    enum CodingKeys: String, CodingKey {
        case profile = "Profile"
        case genderPercentage = "GenderPercentage"
        case graduationRate = "GraduationRate"
        case geographics = "Geographics"
        case greekLife = "GreekLife"
        case mostRepresentedStates = "MostRepresentedStates"
        case ethncity = "Ethncity"
        case religiousAffiliation = "ReligiousAffiliation"
    }
}

// MARK: - Ethncity
struct Ethncity: Codable {
    let collegeEthnicityID, collegeID, ethnicityPercentage: Int?
    let demographicName: String?
    
    enum CodingKeys: String, CodingKey {
        case collegeEthnicityID
        case collegeID = "collegeId"
        case ethnicityPercentage, demographicName
    }
}

// MARK: - GenderPercentage
struct GenderPercentage: Codable {
    let male, female: Int?
    
    enum CodingKeys: String, CodingKey {
        case male = "MALE"
        case female = "FEMALE"
    }
}

// MARK: - Geographic
struct Geographic: Codable {
    let collegeGeographicsID, sysgeographicsID, collegeID, geographicsPercentage: Int?
    let geographicName: String?
    
    enum CodingKeys: String, CodingKey {
        case collegeGeographicsID = "collegeGeographicsId"
        case sysgeographicsID = "sysgeographicsId"
        case collegeID = "collegeId"
        case geographicsPercentage, geographicName
    }
}

// MARK: - GraduationRate
struct GraduationRate: Codable {
    let sixYearGraduationRate, fourYearGraduationRate, retentionRate: Int?
    
    enum CodingKeys: String, CodingKey {
        case sixYearGraduationRate = "SixYearGraduationRate"
        case fourYearGraduationRate = "FourYearGraduationRate"
        case retentionRate = "RetentionRate"
    }
}

// MARK: - GreekLife
struct GreekLife: Codable {
    let name: String?
    let value: Int?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }
}

// MARK: - MostRepresentedStates
struct MostRepresentedStates: Codable {
    let states: [String]?
    
    enum CodingKeys: String, CodingKey {
        case states = "States"
    }
}

// MARK: - Profile
struct Profile: Codable {
    let name: String?
    let value: Value?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }
}

enum Value: Codable {
    case double(Double)
    case string(String)
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(Value.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - IntendedStudy
struct IntendedStudy: Codable {
    let study: [Study]?
    let studentFacultyRatio: String?
    let intendedStudyOption: [IntendedStudyOption]?
    
    enum CodingKeys: String, CodingKey {
        case study = "Study"
        case studentFacultyRatio = "StudentFacultyRatio"
        case intendedStudyOption = "IntendedStudyOption"
    }
}

// MARK: - IntendedStudyOption
struct IntendedStudyOption: Codable {
    let intendedStudyOptionID, collegeID, sysIntendedStudyOptionID, optionValueID: Int?
    let optionBadgeID: Int?
    let sysIntendedStudyOptionName: String?
    let optionValue: OptionValue?
    let badgeValue: BadgeValue?
}

// MARK: - Study
struct Study: Codable {
    let collegeIntendedStudyID, collegeID: Int?
    let intendedStudyName: String?
    let intendedStudyType, intendedStudyPercentage: Int?
}

// MARK: - LinksAndAddress
struct LinksAndAddress: Codable {
    let websiteDetailsID, collegeID: Int?
    let websiteName: String?
    let websiteURL: String?
    let orderID: Int?
    
    enum CodingKeys: String, CodingKey {
        case websiteDetailsID = "websiteDetailsId"
        case collegeID = "collegeId"
        case websiteName
        case websiteURL = "websiteUrl"
        case orderID = "orderId"
    }
}

// MARK: - Location
struct Location: Codable {
    let latitude, longitude: String?
    
    enum CodingKeys: String, CodingKey {
        case latitude = "Latitude"
        case longitude = "Longitude"
    }
}

// MARK: - Major
struct Major: Codable {
    let name, code, nickName: String?
    let specificMajors: [SpecificMajor]?
}

// MARK: - SpecificMajor
struct SpecificMajor: Codable {
    let name, code: String?
    let graduate: Int?
}

// MARK: - PayScaleROIRanking
struct PayScaleROIRanking: Codable {
    let collegeRankingID, collegeID: Int?
    let ranking: JSONNull?
    let rankingPoints: Int?
    let rankingURL: String?
    
    enum CodingKeys: String, CodingKey {
        case collegeRankingID = "collegeRankingId"
        case collegeID = "collegeId"
        case ranking, rankingPoints
        case rankingURL = "rankingUrl"
    }
}

// MARK: - ProminentAlumini
struct ProminentAlumini: Codable {
    let alumniID, collegeID: Int?
    let alumniName: String?
    let alumniDescription, alumniURL: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case alumniID = "alumniId"
        case collegeID = "collegeId"
        case alumniName, alumniDescription
        case alumniURL = "alumniUrl"
    }
}

// MARK: - QuickFacts
struct QuickFacts: Codable {
    let collegeID, quickFactsID: Int?
    let quickFactsValue: String?
}

// MARK: - SimilarSchool
struct SimilarSchool: Codable {
    let college, internalID, collegeID: Int?
    let collegeName: String?
    let similarSchoolsID: Int?
}

// MARK: - Sports
struct Sports: Codable {
    let divisions: Divisions?
    let intramurals: Bool?
    let teamName: String?
    
    enum CodingKeys: String, CodingKey {
        case divisions = "Divisions"
        case intramurals = "Intramurals"
        case teamName = "Team Name"
    }
}

// MARK: - Divisions
struct Divisions: Codable {
    let men, women: Men?
    
    enum CodingKeys: String, CodingKey {
        case men = "Men"
        case women = "Women"
    }
}

// MARK: - Men
struct Men: Codable {
    let ncaaDivisionI, other: [NcaaDivisionI]?
    
    enum CodingKeys: String, CodingKey {
        case ncaaDivisionI = "NCAA DIVISION I"
        case other = "OTHER"
    }
}

// MARK: - NcaaDivisionI
struct NcaaDivisionI: Codable {
    let sportsID, collegeID, sysSportsDivisionID, syssportsID: Int?
    let sportsWebsiteURL: JSONNull?
    let genderID: Int?
    let syssportsName: String?
    let sysSportsDivisionName: SysSportsDivisionName?
    let genderName: GenderName?
    
    enum CodingKeys: String, CodingKey {
        case sportsID = "sportsId"
        case collegeID = "collegeId"
        case sysSportsDivisionID
        case syssportsID = "syssportsId"
        case sportsWebsiteURL = "sportsWebsiteUrl"
        case genderID = "genderId"
        case syssportsName, sysSportsDivisionName, genderName
    }
}

enum GenderName: String, Codable {
    case female = "Female"
    case male = "Male"
}

enum SysSportsDivisionName: String, Codable {
    case ncaaDivisionI = "NCAA DIVISION I"
    case other = "OTHER"
}

// MARK: - TestScoresAndGrades
struct TestScoresAndGrades: Codable {
    let averages: Averages?
    let satAndACT: SATAndACT?
    let scores: Scores?
    let hsc: Hsc?
    
    enum CodingKeys: String, CodingKey {
        case averages = "Averages"
        case satAndACT = "SATAndACT"
        case scores = "SCORES"
        case hsc = "HSC"
    }
}

// MARK: - Averages
struct Averages: Codable {
    let averageGPA: String?
    let averageSAT, newAverageSAT, averageACT: Int?
    
    enum CodingKeys: String, CodingKey {
        case averageGPA = "AverageGPA"
        case averageSAT = "AverageSAT"
        case newAverageSAT = "NewAverageSAT"
        case averageACT = "AverageACT"
    }
}

// MARK: - Hsc
struct Hsc: Codable {
    let hscTopTenth, hscTopQuarter, hscTopHalf, hscBottomHalf: HscBottomHalf?
    let hscBottomQuarter, hscTotal: HscBottomHalf?
    
    enum CodingKeys: String, CodingKey {
        case hscTopTenth = "HSC_TOP_TENTH"
        case hscTopQuarter = "HSC_TOP_QUARTER"
        case hscTopHalf = "HSC_TOP_HALF"
        case hscBottomHalf = "HSC_BOTTOM_HALF"
        case hscBottomQuarter = "HSC_BOTTOM_QUARTER"
        case hscTotal = "HSC_TOTAL"
    }
}

// MARK: - HscBottomHalf
struct HscBottomHalf: Codable {
    let collegeScoreID, collegeID, sysscoretypeID: Int?
    let scoreLowerLimit, scoreHigherLimit: Double?
    let percentage: Int?
    
    enum CodingKeys: String, CodingKey {
        case collegeScoreID = "collegeScoreId"
        case collegeID = "collegeId"
        case sysscoretypeID = "sysscoretypeId"
        case scoreLowerLimit, scoreHigherLimit, percentage
    }
}

// MARK: - SATAndACT
struct SATAndACT: Codable {
    let codes: [Code]?
    
    enum CodingKeys: String, CodingKey {
        case codes = "Codes"
    }
}

// MARK: - Code
struct Code: Codable {
    let sat: [Sat]?
    let act: [Act]?
    
    enum CodingKeys: String, CodingKey {
        case sat = "SAT"
        case act = "ACT"
    }
}

// MARK: - Act
struct Act: Codable {
    let english, math: HscBottomHalf?
    let compositeLow, compositeHigh: Int?
    
    enum CodingKeys: String, CodingKey {
        case english = "English"
        case math
        case compositeLow = "CompositeLow"
        case compositeHigh = "CompositeHigh"
    }
}

// MARK: - Sat
struct Sat: Codable {
    let criticalReading: HscBottomHalf?
    let totalLow, totalHigh: Int?
    let math, writing, newMath: HscBottomHalf?
    let newSat: Bool?
    let newTotalLow, newTotalHigh: Int?
    let readingWriting: HscBottomHalf?
    
    enum CodingKeys: String, CodingKey {
        case criticalReading = "CriticalReading"
        case totalLow = "TotalLow"
        case totalHigh = "TotalHigh"
        case math
        case writing = "Writing"
        case newMath = "NewMath"
        case newSat = "NewSat"
        case newTotalLow = "NewTotalLow"
        case newTotalHigh = "NewTotalHigh"
        case readingWriting = "ReadingWriting"
    }
}

// MARK: - Scores
struct Scores: Codable {
    let allScores: [AllScore]?
    
    enum CodingKeys: String, CodingKey {
        case allScores = "AllScores"
    }
}

// MARK: - AllScore
struct AllScore: Codable {
    let gpascores: [HscBottomHalf]?
    let satscores: [Satscore]?
    let newsatscores: [Newsatscore]?
    let actscores: [HscBottomHalf]?
    
    enum CodingKeys: String, CodingKey {
        case gpascores = "GPASCORES"
        case satscores = "SATSCORES"
        case newsatscores = "NEWSATSCORES"
        case actscores = "ACTSCORES"
    }
}

// MARK: - Newsatscore
struct Newsatscore: Codable {
    let newSatScoresReadingAndWriting, newSatScoresMath: [HscBottomHalf]?
    
    enum CodingKeys: String, CodingKey {
        case newSatScoresReadingAndWriting = "NewSatScoresReadingAndWriting"
        case newSatScoresMath = "NewSatScoresMath"
    }
}

// MARK: - Satscore
struct Satscore: Codable {
    let readingPercentage, mathPecentage, writingPercentage: [HscBottomHalf]?
    
    enum CodingKeys: String, CodingKey {
        case readingPercentage = "ReadingPercentage"
        case mathPecentage = "MathPecentage"
        case writingPercentage = "WritingPercentage"
    }
}

// MARK: - Weather
struct Weather: Codable {
    let name, low, high, precipitation: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case low = "Low"
        case high = "High"
        case precipitation = "Precipitation"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

