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
        public let salmon = Color.hex("#FA8072")
        public let darkSalmon = Color.hex("#E9967A")
        public let lightSalmon = Color.hex("#FFA07A")
        public let indianRed = Color.hex("#CD5C5C")
        public let lightCoral = Color.hex("#F08080")
        public let crimson = Color.hex("#DC143C")
        public let fireBrick = Color.hex("#B22222")
        public let darkRed = Color.hex("#8B0000")
    }
    
    public class HTMLPink {
        public let lightPink = Color.hex("#FFB6C1")
        public let hotPink = Color.hex("#FF69B4")
        public let deepPink = Color.hex("#FF1493")
        public let violetRed = Color.hex("#C71585")
        public let lightVioletRed = Color.hex("#DB7093")
    }
    
    public class HTMLOrange {
        public let coral = Color.hex("#FF7F50")
        public let tomato = Color.hex("#FF6347")
        public let orangeRed = Color.hex("#FF4500")
        public let darkOrange = Color.hex("#FF8C00")
    }
    
    public class HTMLYellow {
        public let gold = Color.hex("#FFD700")
        public let lightYellow = Color.hex("#FFFFE0")
        public let lemonChiffon = Color.hex("#FFFACD")
        public let lightGoldenrodYellow = Color.hex("#FAFAD2")
        public let papayaWhip = Color.hex("#FFEFD5")
        public let moccasin = Color.hex("#FFE4B5")
        public let peachPuff = Color.hex("#FFDAB9")
        public let paleGoldenrod = Color.hex("#EEE8AA")
        public let khaki = Color.hex("#F0E68C")
        public let darkKhaki = Color.hex("#BDB76B")
    }
    
    public class HTMLPurple {
        public let lavender = Color.hex("#E6E6FA")
        public let thistle = Color.hex("#D8BFD8")
        public let plum = Color.hex("#DDA0DD")
        public let violet = Color.hex("#EE82EE")
        public let orchid = Color.hex("#DA70D6")
        public let mediumOrchid = Color.hex("#BA55D3")
        public let darkOrchid = Color.hex("#9932CC")
        public let fuchsia = Color.hex("#FF00FF")
        public let mediumPurple = Color.hex("#9370DB")
        public let rebeccaPurple = Color.hex("#663399")
        public let blueViolet = Color.hex("#8A2BE2")
        public let darkViolet = Color.hex("#9400D3")
        public let darkMagenta = Color.hex("#8B008B")
        public let indigo = Color.hex("#4B0082")
        public let slateBlue = Color.hex("#6A5ACD")
        public let darkSlateBlue = Color.hex("#483D8B")
        public let mediumSlateBlue = Color.hex("#7B68EE")
    }
    
    public class HTMLGreen {
        public let greenYellow = Color.hex("#ADFF2F")
        public let chartreuse = Color.hex("#7FFF00")
        public let lawnGreen = Color.hex("#7CFC00")
        public let limeGreen = Color.hex("#32CD32")
        public let paleGreen = Color.hex("#98FB98")
        public let lightGreen = Color.hex("#90EE90")
        public let mediumSpringGreen = Color.hex("#00FA9A")
        public let springGreen = Color.hex("#00FF7F")
        public let mediumSeaGreen = Color.hex("#3CB371")
        public let seaGreen = Color.hex("#2E8B57")
        public let forestGreen = Color.hex("#228B22")
        public let darkGreen = Color.hex("#006400")
        public let yellowGreen = Color.hex("#9ACD32")
        public let oliveDrab = Color.hex("#6B8E23")
        public let olive = Color.hex("#808000")
        public let darkOliveGreen = Color.hex("#556B2F")
        public let mediumAquamarine = Color.hex("#66CDAA")
        public let darkSeaGreen = Color.hex("#8FBC8B")
        public let lightSeaGreen = Color.hex("#20B2AA")
        public let teal = Color.hex("#008080")
    }
    
    class HTMLBlue {
        public let lightCyan = Color.hex("#E0FFFF")
        public let darkCyan = Color.hex("#008B8B")
        public let paleTurquoise = Color.hex("#AFEEEE")
        public let aquamarine = Color.hex("#7FFFD4")
        public let turquoise = Color.hex("#40E0D0")
        public let mediumTurquoise = Color.hex("#48D1CC")
        public let darkTurquoise = Color.hex("#00CED1")
        public let cadetBlue = Color.hex("#5F9EA0")
        public let steelBlue = Color.hex("#4682B4")
        public let lightSteelBlue = Color.hex("#B0C4DE")
        public let powderBlue = Color.hex("#B0E0E6")
        public let lightBlue = Color.hex("#ADD8E6")
        public let skyBlue = Color.hex("#87CEEB")
        public let lightSkyBlue = Color.hex("#87CEFA")
        public let darkSkyBlue = Color.hex("#00BFFF")
        public let dodgerBlue = Color.hex("#1E90FF")
        public let cornflowerBlue = Color.hex("#6495ED")
        public let mediumSlateBlue = Color.hex("#7B68EE")
        public let royalBlue = Color.hex("#4169E1")
        public let mediumBlue = Color.hex("#0000CD")
        public let darkBlue = Color.hex("#00008B")
        public let navy = Color.hex("#000080")
        public let midnightBlue = Color.hex("#191970")
    }
    
    public class HTMLBrown {
        public let cornsilk = Color.hex("#FFF8DC")
        public let blanchedAlmond = Color.hex("#FFEBCD")
        public let bisque = Color.hex("#FFE4C4")
        public let navajoWhite = Color.hex("#FFDEAD")
        public let wheat = Color.hex("#F5DEB3")
        public let burlyWood = Color.hex("#DEB887")
        public let tan = Color.hex("#D2B48C")
        public let rosyBrown = Color.hex("#BC8F8F")
        public let sandyBrown = Color.hex("#F4A460")
        public let goldenRod = Color.hex("#DAA520")
        public let darkGoldenrod = Color.hex("#B8860B")
        public let peru = Color.hex("#CD853F")
        public let chocolate = Color.hex("#D2691E")
        public let saddleBrown = Color.hex("#8B4513")
        public let sienna = Color.hex("#A0522D")
        public let brown = Color.hex("#A52A2A")
        public let maroon = Color.hex("#800000")
    }
    
    public class HTMLWhite {
        public let snow = Color.hex("#FFFAFA")
        public let honeyDew = Color.hex("#F0FFF0")
        public let mintCream = Color.hex("#F5FFFA")
        public let azure = Color.hex("#F0FFFF")
        public let aliceBlue = Color.hex("#F0F8FF")
        public let ghostWhite = Color.hex("#F8F8FF")
        public let whiteSmoke = Color.hex("#F5F5F5")
        public let seaShell = Color.hex("#FFF5EE")
        public let beige = Color.hex("#F5F5DC")
        public let oldLace = Color.hex("#FDF5E6")
        public let floralWhite = Color.hex("#FFFAF0")
        public let ivory = Color.hex("#FFFFF0")
        public let antiqueWhite = Color.hex("#FAEBD7")
        public let linen = Color.hex("#FAF0E6")
        public let lavenderBlush = Color.hex("#FFF0F5")
        public let mistyRose = Color.hex("#FFE4E1")
    }
    
    public class HTMLGray {
        public let gainsboro = Color.hex("#DCDCDC")
        public let lightGray = Color.hex("#D3D3D3")
        public let silver = Color.hex("#C0C0C0")
        public let darkGray = Color.hex("#A9A9A9")
        public let gray = Color.hex("#808080")
        public let dimGray = Color.hex("#696969")
        public let lightSlateGray = Color.hex("#778899")
        public let slateGray = Color.hex("#708090")
        public let darkSlateGray = Color.hex("#2F4F4F")
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
