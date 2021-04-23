import SwiftUI

extension StringProtocol {
    subscript(offset: Int) -> String {
        String(self[index(startIndex, offsetBy: offset)])
    }
}

struct HTMLColors_Previews: PreviewProvider {
    public static var previews: some View {
        
        HTMLColors()
            .previewDevice("iPhone 11")
    }
}


extension Color {
    public static func hex(_ hexCode: String) -> Color {
        if (hexCode.count > 7){
            print("Invalid hex code")
            return Color.primary
        }
        
        var red: Double = 0
        var green: Double = 0
        var blue: Double = 0
        
        if hexCode.count == 7 {
            if (hexCode[0] != "#") {
                print("Hex code needs to start with '#'")
                return Color.primary
            }
        }
        for count in 0..<hexCode.count {
            if count > 0 {
                let pattern = "[a-fA-F0-9]"
                let result = String(hexCode[count]).range(of: pattern, options: .regularExpression)
                if (result == nil) {
                    print("Invalid hex code")
                    return Color.primary
                }
            }
        }
        
        if (hexCode.count == 7) {
            let redHex = hexCode[1] + hexCode[2]
            let greenHex = hexCode[3] + hexCode[4]
            let blueHex = hexCode[5] + hexCode[6]
            
            red = Double(UInt8(strtoul(redHex, nil, 16)))
            green = Double(UInt8(strtoul(greenHex, nil, 16)))
            blue = Double(UInt8(strtoul(blueHex, nil, 16)))
        } else if (hexCode.count == 4) {
            let redHex = hexCode[1] + hexCode[1]
            let greenHex = hexCode[2] + hexCode[2]
            let blueHex = hexCode[3] + hexCode[3]
            
            red = Double(UInt8(strtoul(redHex, nil, 16)))
            green = Double(UInt8(strtoul(greenHex, nil, 16)))
            blue = Double(UInt8(strtoul(blueHex, nil, 16)))
        }
        
    
        return Color.init(red: red/255, green: green/255, blue: blue/255)
    }
    
    public class HTMLRed {
        public static let salmon = Color.hex("#FA8072")
        public static let darkSalmon = Color.hex("#E9967A")
        public static let lightSalmon = Color.hex("#FFA07A")
        public static let indianRed = Color.hex("#CD5C5C")
        public static let lightCoral = Color.hex("#F08080")
        public static let crimson = Color.hex("#DC143C")
        public static let fireBrick = Color.hex("#B22222")
        public static let darkRed = Color.hex("#8B0000")
    }
    
    public class HTMLPink {
        public static let lightPink = Color.hex("#FFB6C1")
        public static let hotPink = Color.hex("#FF69B4")
        public static let deepPink = Color.hex("#FF1493")
        public static let violetRed = Color.hex("#C71585")
        public static let lightVioletRed = Color.hex("#DB7093")
    }
    
    public class HTMLOrange {
        public static let coral = Color.hex("#FF7F50")
        public static let tomato = Color.hex("#FF6347")
        public static let orangeRed = Color.hex("#FF4500")
        public static let darkOrange = Color.hex("#FF8C00")
    }
    
    public class HTMLYellow {
        public static let gold = Color.hex("#FFD700")
        public static let lightYellow = Color.hex("#FFFFE0")
        public static let lemonChiffon = Color.hex("#FFFACD")
        public static let lightGoldenrodYellow = Color.hex("#FAFAD2")
        public static let papayaWhip = Color.hex("#FFEFD5")
        public static let moccasin = Color.hex("#FFE4B5")
        public static let peachPuff = Color.hex("#FFDAB9")
        public static let paleGoldenrod = Color.hex("#EEE8AA")
        public static let khaki = Color.hex("#F0E68C")
        public static let darkKhaki = Color.hex("#BDB76B")
    }
    
    public class HTMLPurple {
        public static let lavender = Color.hex("#E6E6FA")
        public static let thistle = Color.hex("#D8BFD8")
        public static let plum = Color.hex("#DDA0DD")
        public static let violet = Color.hex("#EE82EE")
        public static let orchid = Color.hex("#DA70D6")
        public static let mediumOrchid = Color.hex("#BA55D3")
        public static let darkOrchid = Color.hex("#9932CC")
        public static let fuchsia = Color.hex("#FF00FF")
        public static let mediumPurple = Color.hex("#9370DB")
        public static let rebeccaPurple = Color.hex("#663399")
        public static let blueViolet = Color.hex("#8A2BE2")
        public static let darkViolet = Color.hex("#9400D3")
        public static let darkMagenta = Color.hex("#8B008B")
        public static let indigo = Color.hex("#4B0082")
        public static let slateBlue = Color.hex("#6A5ACD")
        public static let darkSlateBlue = Color.hex("#483D8B")
        public static let mediumSlateBlue = Color.hex("#7B68EE")
    }
    
    public class HTMLGreen {
        public static let greenYellow = Color.hex("#ADFF2F")
        public static let chartreuse = Color.hex("#7FFF00")
        public static let lawnGreen = Color.hex("#7CFC00")
        public static let limeGreen = Color.hex("#32CD32")
        public static let paleGreen = Color.hex("#98FB98")
        public static let lightGreen = Color.hex("#90EE90")
        public static let mediumSpringGreen = Color.hex("#00FA9A")
        public static let springGreen = Color.hex("#00FF7F")
        public static let mediumSeaGreen = Color.hex("#3CB371")
        public static let seaGreen = Color.hex("#2E8B57")
        public static let forestGreen = Color.hex("#228B22")
        public static let darkGreen = Color.hex("#006400")
        public static let yellowGreen = Color.hex("#9ACD32")
        public static let oliveDrab = Color.hex("#6B8E23")
        public static let olive = Color.hex("#808000")
        public static let darkOliveGreen = Color.hex("#556B2F")
        public static let mediumAquamarine = Color.hex("#66CDAA")
        public static let darkSeaGreen = Color.hex("#8FBC8B")
        public static let lightSeaGreen = Color.hex("#20B2AA")
        public static let teal = Color.hex("#008080")
    }
    
    class HTMLBlue {
        public static let lightCyan = Color.hex("#E0FFFF")
        public static let darkCyan = Color.hex("#008B8B")
        public static let paleTurquoise = Color.hex("#AFEEEE")
        public static let aquamarine = Color.hex("#7FFFD4")
        public static let turquoise = Color.hex("#40E0D0")
        public static let mediumTurquoise = Color.hex("#48D1CC")
        public static let darkTurquoise = Color.hex("#00CED1")
        public static let cadetBlue = Color.hex("#5F9EA0")
        public static let steelBlue = Color.hex("#4682B4")
        public static let lightSteelBlue = Color.hex("#B0C4DE")
        public static let powderBlue = Color.hex("#B0E0E6")
        public static let lightBlue = Color.hex("#ADD8E6")
        public static let skyBlue = Color.hex("#87CEEB")
        public static let lightSkyBlue = Color.hex("#87CEFA")
        public static let darkSkyBlue = Color.hex("#00BFFF")
        public static let dodgerBlue = Color.hex("#1E90FF")
        public static let cornflowerBlue = Color.hex("#6495ED")
        public static let mediumSlateBlue = Color.hex("#7B68EE")
        public static let royalBlue = Color.hex("#4169E1")
        public static let mediumBlue = Color.hex("#0000CD")
        public static let darkBlue = Color.hex("#00008B")
        public static let navy = Color.hex("#000080")
        public static let midnightBlue = Color.hex("#191970")
    }
    
    public class HTMLBrown {
        public static let cornsilk = Color.hex("#FFF8DC")
        public static let blanchedAlmond = Color.hex("#FFEBCD")
        public static let bisque = Color.hex("#FFE4C4")
        public static let navajoWhite = Color.hex("#FFDEAD")
        public static let wheat = Color.hex("#F5DEB3")
        public static let burlyWood = Color.hex("#DEB887")
        public static let tan = Color.hex("#D2B48C")
        public static let rosyBrown = Color.hex("#BC8F8F")
        public static let sandyBrown = Color.hex("#F4A460")
        public static let goldenRod = Color.hex("#DAA520")
        public static let darkGoldenrod = Color.hex("#B8860B")
        public static let peru = Color.hex("#CD853F")
        public static let chocolate = Color.hex("#D2691E")
        public static let saddleBrown = Color.hex("#8B4513")
        public static let sienna = Color.hex("#A0522D")
        public static let brown = Color.hex("#A52A2A")
        public static let maroon = Color.hex("#800000")
    }
    
    public class HTMLWhite {
        public static let snow = Color.hex("#FFFAFA")
        public static let honeyDew = Color.hex("#F0FFF0")
        public static let mintCream = Color.hex("#F5FFFA")
        public static let azure = Color.hex("#F0FFFF")
        public static let aliceBlue = Color.hex("#F0F8FF")
        public static let ghostWhite = Color.hex("#F8F8FF")
        public static let whiteSmoke = Color.hex("#F5F5F5")
        public static let seaShell = Color.hex("#FFF5EE")
        public static let beige = Color.hex("#F5F5DC")
        public static let oldLace = Color.hex("#FDF5E6")
        public static let floralWhite = Color.hex("#FFFAF0")
        public static let ivory = Color.hex("#FFFFF0")
        public static let antiqueWhite = Color.hex("#FAEBD7")
        public static let linen = Color.hex("#FAF0E6")
        public static let lavenderBlush = Color.hex("#FFF0F5")
        public static let mistyRose = Color.hex("#FFE4E1")
    }
    
    public class HTMLGray {
        public static let gainsboro = Color.hex("#DCDCDC")
        public static let lightGray = Color.hex("#D3D3D3")
        public static let silver = Color.hex("#C0C0C0")
        public static let darkGray = Color.hex("#A9A9A9")
        public static let gray = Color.hex("#808080")
        public static let dimGray = Color.hex("#696969")
        public static let lightSlateGray = Color.hex("#778899")
        public static let slateGray = Color.hex("#708090")
        public static let darkSlateGray = Color.hex("#2F4F4F")
    }
}

struct HTMLColors: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                Text("Red Colors")
                    .font(.title)
                Group {
                    Text("crimson")
                        .foregroundColor(.HTMLRed.crimson)
                    Text("darkRed")
                        .foregroundColor(.HTMLRed.darkRed)
                    Text("darkSalmon")
                        .foregroundColor(.HTMLRed.darkSalmon)
                    Text("fireBrick")
                        .foregroundColor(.HTMLRed.fireBrick)
                    Text("indianRed")
                        .foregroundColor(.HTMLRed.indianRed)
                    Text("lightCoral")
                        .foregroundColor(.HTMLRed.lightCoral)
                    Text("lightSalmon")
                        .foregroundColor(.HTMLRed.lightSalmon)
                    Text("Salmon")
                        .foregroundColor(.HTMLRed.salmon)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Pink Colors")
                    .font(.title)
                Group {
                    Text("deepPink")
                        .foregroundColor(.HTMLPink.deepPink)
                    Text("hotPink")
                        .foregroundColor(.HTMLPink.hotPink)
                    Text("lightPink")
                        .foregroundColor(.HTMLPink.lightPink)
                    Text("lightVioletRed")
                        .foregroundColor(.HTMLPink.lightVioletRed)
                    Text("violetRed")
                        .foregroundColor(.HTMLPink.violetRed)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Orange Colors")
                    .font(.title)
                
                Group {
                    Text("coral")
                        .foregroundColor(.HTMLOrange.coral)
                    Text("darkOrange")
                        .foregroundColor(.HTMLOrange.darkOrange)
                    Text("orangeRed")
                        .foregroundColor(.HTMLOrange.orangeRed)
                    Text("tomato")
                        .foregroundColor(.HTMLOrange.tomato)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Yellow Colors")
                    .font(.title)
                Group {
                    Text("darkKhaki")
                        .foregroundColor(.HTMLYellow.darkKhaki)
                    Text("Gold")
                        .foregroundColor(.HTMLYellow.gold)
                    Text("lemonChiffon")
                        .foregroundColor(.HTMLYellow.lemonChiffon)
                    Text("lightGoldenrodYellow")
                        .foregroundColor(.HTMLYellow.lightGoldenrodYellow)
                    Text("lightYellow")
                        .foregroundColor(.HTMLYellow.lightYellow)
                    Text("moccasin")
                        .foregroundColor(.HTMLYellow.moccasin)
                    Text("paleGoldenrod")
                        .foregroundColor(.HTMLYellow.paleGoldenrod)
                    Text("papayaWhip")
                        .foregroundColor(.HTMLYellow.papayaWhip)
                    Text("peachPuff")
                        .foregroundColor(.HTMLYellow.peachPuff)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Purple Colors")
                
                Group {
                    Text("blueViolet")
                        .foregroundColor(.HTMLPurple.blueViolet)
                    Text("darkMagenta")
                        .foregroundColor(.HTMLPurple.darkMagenta)
                    Text("darkOrchid")
                        .foregroundColor(.HTMLPurple.darkOrchid)
                    Text("darkSlateBlue")
                        .foregroundColor(.HTMLPurple.darkSlateBlue)
                    Text("darkViolet")
                        .foregroundColor(.HTMLPurple.darkViolet)
                    Text("fuchsia")
                        .foregroundColor(.HTMLPurple.fuchsia)
                    Text("indigo")
                        .foregroundColor(.HTMLPurple.indigo)
                    Text("lavender")
                        .foregroundColor(.HTMLPurple.lavender)
                    Text("mediumOrchid")
                        .foregroundColor(.HTMLPurple.mediumOrchid)
                    Text("mediumPurple")
                        .foregroundColor(.HTMLPurple.mediumPurple)
                }
                Group {
                    Text("mediumSlateBlue")
                        .foregroundColor(.HTMLPurple.mediumSlateBlue)
                    Text("orchid")
                        .foregroundColor(.HTMLPurple.orchid)
                    Text("plum")
                        .foregroundColor(.HTMLPurple.plum)
                    Text("rebeccaPurple")
                        .foregroundColor(.HTMLPurple.rebeccaPurple)
                    Text("slateBlue")
                        .foregroundColor(.HTMLPurple.slateBlue)
                    Text("thistle")
                        .foregroundColor(.HTMLPurple.thistle)
                    Text("violet")
                        .foregroundColor(.HTMLPurple.violet)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Green Colors")
                    .font(.title)
                Group {
                    Text("chartreuse")
                        .foregroundColor(.HTMLGreen.chartreuse)
                    Text("darkGreen")
                        .foregroundColor(.HTMLGreen.darkGreen)
                    Text("darkOliveGreen")
                        .foregroundColor(.HTMLGreen.darkOliveGreen)
                    Text("darkSeaGreen")
                        .foregroundColor(.HTMLGreen.darkSeaGreen)
                    Text("forestGreen")
                        .foregroundColor(.HTMLGreen.forestGreen)
                    Text("greenYellow")
                        .foregroundColor(.HTMLGreen.greenYellow)
                    Text("lawnGreen")
                        .foregroundColor(.HTMLGreen.lawnGreen)
                    Text("lightGreen")
                        .foregroundColor(.HTMLGreen.lightGreen)
                    Text("lightSeaGreen")
                        .foregroundColor(.HTMLGreen.lightSeaGreen)
                    Text("limeGreen")
                        .foregroundColor(.HTMLGreen.limeGreen)
                }
                Group {
                    Text("mediumAquamarine")
                        .foregroundColor(.HTMLGreen.mediumAquamarine)
                    Text("mediumSeaGreen")
                        .foregroundColor(.HTMLGreen.mediumSeaGreen)
                    Text("mediumSpringGreen")
                        .foregroundColor(.HTMLGreen.mediumSpringGreen)
                    Text("olive")
                        .foregroundColor(.HTMLGreen.olive)
                    Text("oliveDrab")
                        .foregroundColor(.HTMLGreen.oliveDrab)
                    Text("paleGreen")
                        .foregroundColor(.HTMLGreen.paleGreen)
                    Text("seaGreen")
                        .foregroundColor(.HTMLGreen.seaGreen)
                    Text("springGreen")
                        .foregroundColor(.HTMLGreen.springGreen)
                    Text("teal")
                        .foregroundColor(.HTMLGreen.teal)
                    Text("yellowGreen")
                        .foregroundColor(.HTMLGreen.yellowGreen)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Blue Colous")
                    .font(.title)
                
                Group {
                    Text("aquamarine")
                        .foregroundColor(.HTMLBlue.aquamarine)
                    Text("cadetBlue")
                        .foregroundColor(.HTMLBlue.cadetBlue)
                    Text("cornflowerBlue")
                        .foregroundColor(.HTMLBlue.cornflowerBlue)
                    Text("darkBlue")
                        .foregroundColor(.HTMLBlue.darkBlue)
                    Text("darkCyan")
                        .foregroundColor(.HTMLBlue.darkCyan)
                    Text("darkSkyBlue")
                        .foregroundColor(.HTMLBlue.darkSkyBlue)
                    Text("darkTurquoise")
                        .foregroundColor(.HTMLBlue.darkTurquoise)
                    Text("dodgerBlue")
                        .foregroundColor(.HTMLBlue.dodgerBlue)
                    Text("lightBlue")
                        .foregroundColor(.HTMLBlue.lightBlue)
                    Text("lightCyan")
                        .foregroundColor(.HTMLBlue.lightCyan)
                }
                Group {
                    Text("lightSkyBlue")
                        .foregroundColor(.HTMLBlue.lightSkyBlue)
                    Text("lightSteelBlue")
                        .foregroundColor(.HTMLBlue.lightSteelBlue)
                    Text("mediumBlue")
                        .foregroundColor(.HTMLBlue.mediumBlue)
                    Text("mediumSlateBlue")
                        .foregroundColor(.HTMLBlue.mediumSlateBlue)
                    Text("mediumTurquoise")
                        .foregroundColor(.HTMLBlue.mediumTurquoise)
                    Text("midnightBlue")
                        .foregroundColor(.HTMLBlue.midnightBlue)
                    Text("navy")
                        .foregroundColor(.HTMLBlue.navy)
                    Text("paleTurquoise")
                        .foregroundColor(.HTMLBlue.paleTurquoise)
                    Text("powderBlue")
                        .foregroundColor(.HTMLBlue.powderBlue)
                    Text("royalBlue")
                        .foregroundColor(.HTMLBlue.royalBlue)
                }
                Group {
                    Text("skyBlue")
                        .foregroundColor(.HTMLBlue.skyBlue)
                    Text("steelBlue")
                        .foregroundColor(.HTMLBlue.steelBlue)
                    Text("turquoise")
                        .foregroundColor(.HTMLBlue.turquoise)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Brown Colors")
                    .font(.title)
                
                Group {
                    Text("bisque")
                        .foregroundColor(.HTMLBrown.bisque)
                    Text("blanchedAlmond")
                        .foregroundColor(.HTMLBrown.blanchedAlmond)
                    Text("brown")
                        .foregroundColor(.HTMLBrown.brown)
                    Text("burlyWood")
                        .foregroundColor(.HTMLBrown.burlyWood)
                    Text("chocolate")
                        .foregroundColor(.HTMLBrown.chocolate)
                    Text("cornsilk")
                        .foregroundColor(.HTMLBrown.cornsilk)
                    Text("darkGoldenrod")
                        .foregroundColor(.HTMLBrown.darkGoldenrod)
                    Text("goldenRod")
                        .foregroundColor(.HTMLBrown.goldenRod)
                    Text("maroon")
                        .foregroundColor(.HTMLBrown.maroon)
                    Text("navajoWhite")
                        .foregroundColor(.HTMLBrown.navajoWhite)
                }
                Group {
                    Text("peru")
                        .foregroundColor(.HTMLBrown.peru)
                    Text("rosyBrown")
                        .foregroundColor(.HTMLBrown.rosyBrown)
                    Text("saddleBrown")
                        .foregroundColor(.HTMLBrown.saddleBrown)
                    Text("sandyBrown")
                        .foregroundColor(.HTMLBrown.sandyBrown)
                    Text("sienna")
                        .foregroundColor(.HTMLBrown.sienna)
                    Text("tan")
                        .foregroundColor(.HTMLBrown.tan)
                    Text("wheat")
                        .foregroundColor(.HTMLBrown.wheat)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("White Colors")
                    .font(.title)
                Group {
                    Text("aliceBlue")
                        .foregroundColor(.HTMLWhite.aliceBlue)
                    Text("antiqueWhite")
                        .foregroundColor(.HTMLWhite.antiqueWhite)
                    Text("azure")
                        .foregroundColor(.HTMLWhite.azure)
                    Text("beige")
                        .foregroundColor(.HTMLWhite.beige)
                    Text("floralWhite")
                        .foregroundColor(.HTMLWhite.floralWhite)
                    Text("ghostWhite")
                        .foregroundColor(.HTMLWhite.ghostWhite)
                    Text("honeyDew")
                        .foregroundColor(.HTMLWhite.honeyDew)
                    Text("ivory")
                        .foregroundColor(.HTMLWhite.ivory)
                    Text("lavenderBlush")
                        .foregroundColor(.HTMLWhite.lavenderBlush)
                    Text("linen")
                        .foregroundColor(.HTMLWhite.linen)
                }
                Group {
                    Text("mintCream")
                        .foregroundColor(.HTMLWhite.mintCream)
                    Text("mistyRose")
                        .foregroundColor(.HTMLWhite.mistyRose)
                    Text("oldLace")
                        .foregroundColor(.HTMLWhite.oldLace)
                    Text("seaShell")
                        .foregroundColor(.HTMLWhite.seaShell)
                    Text("snow")
                        .foregroundColor(.HTMLWhite.snow)
                    Text("whiteSmoke")
                        .foregroundColor(.HTMLWhite.whiteSmoke)
                }
            }.padding()
            
            VStack(spacing: 5) {
                Text("Gray Colors")
                    .font(.title)
                
                Group {
                    Text("gainsboro")
                        .foregroundColor(.HTMLGray.gainsboro)
                    Text("lightGray")
                        .foregroundColor(.HTMLGray.lightGray)
                    Text("silver")
                        .foregroundColor(.HTMLGray.silver)
                    Text("darkGray")
                        .foregroundColor(.HTMLGray.darkGray)
                    Text("gray")
                        .foregroundColor(.HTMLGray.gray)
                    Text("dimGray")
                        .foregroundColor(.HTMLGray.dimGray)
                    Text("lightSlateGray")
                        .foregroundColor(.HTMLGray.lightSlateGray)
                    Text("slateGray")
                        .foregroundColor(.HTMLGray.slateGray)
                    Text("darkSlateGray")
                        .foregroundColor(.HTMLGray.darkSlateGray)
                }
            }.padding()
            
        }
    }
}
