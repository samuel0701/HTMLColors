import SwiftUI

extension StringProtocol {
    subscript(offset: Int) -> String {
        String(self[index(startIndex, offsetBy: offset)])
    }
}

struct HTMLColors_Previews: PreviewProvider {
    static var previews: some View {
        
        HTMLColors()
            .previewDevice("iPhone 11")
    }
}


extension Color {
    static func hex(_ hexCode: String) -> Color {
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
    
    class HTMLRed {
        static let salmon = Color.hex("#FA8072")
        static let darkSalmon = Color.hex("#E9967A")
        static let lightSalmon = Color.hex("#FFA07A")
        static let indianRed = Color.hex("#CD5C5C")
        static let lightCoral = Color.hex("#F08080")
        static let crimson = Color.hex("#DC143C")
        static let fireBrick = Color.hex("#B22222")
        static let darkRed = Color.hex("#8B0000")
    }
    
    class HTMLPink {
        static let lightPink = Color.hex("#FFB6C1")
        static let hotPink = Color.hex("#FF69B4")
        static let deepPink = Color.hex("#FF1493")
        static let violetRed = Color.hex("#C71585")
        static let lightVioletRed = Color.hex("#DB7093")
    }
    
    class HTMLOrange {
        static let coral = Color.hex("#FF7F50")
        static let tomato = Color.hex("#FF6347")
        static let orangeRed = Color.hex("#FF4500")
        static let darkOrange = Color.hex("#FF8C00")
    }
    
    class HTMLYellow {
        static let gold = Color.hex("#FFD700")
        static let lightYellow = Color.hex("#FFFFE0")
        static let lemonChiffon = Color.hex("#FFFACD")
        static let lightGoldenrodYellow = Color.hex("#FAFAD2")
        static let papayaWhip = Color.hex("#FFEFD5")
        static let moccasin = Color.hex("#FFE4B5")
        static let peachPuff = Color.hex("#FFDAB9")
        static let paleGoldenrod = Color.hex("#EEE8AA")
        static let khaki = Color.hex("#F0E68C")
        static let darkKhaki = Color.hex("#BDB76B")
    }
    
    class HTMLPurple {
        static let lavender = Color.hex("#E6E6FA")
        static let thistle = Color.hex("#D8BFD8")
        static let plum = Color.hex("#DDA0DD")
        static let violet = Color.hex("#EE82EE")
        static let orchid = Color.hex("#DA70D6")
        static let mediumOrchid = Color.hex("#BA55D3")
        static let darkOrchid = Color.hex("#9932CC")
        static let fuchsia = Color.hex("#FF00FF")
        static let mediumPurple = Color.hex("#9370DB")
        static let rebeccaPurple = Color.hex("#663399")
        static let blueViolet = Color.hex("#8A2BE2")
        static let darkViolet = Color.hex("#9400D3")
        static let darkMagenta = Color.hex("#8B008B")
        static let indigo = Color.hex("#4B0082")
        static let slateBlue = Color.hex("#6A5ACD")
        static let darkSlateBlue = Color.hex("#483D8B")
        static let mediumSlateBlue = Color.hex("#7B68EE")
    }
    
    class HTMLGreen {
        static let greenYellow = Color.hex("#ADFF2F")
        static let chartreuse = Color.hex("#7FFF00")
        static let lawnGreen = Color.hex("#7CFC00")
        static let limeGreen = Color.hex("#32CD32")
        static let paleGreen = Color.hex("#98FB98")
        static let lightGreen = Color.hex("#90EE90")
        static let mediumSpringGreen = Color.hex("#00FA9A")
        static let springGreen = Color.hex("#00FF7F")
        static let mediumSeaGreen = Color.hex("#3CB371")
        static let seaGreen = Color.hex("#2E8B57")
        static let forestGreen = Color.hex("#228B22")
        static let darkGreen = Color.hex("#006400")
        static let yellowGreen = Color.hex("#9ACD32")
        static let oliveDrab = Color.hex("#6B8E23")
        static let olive = Color.hex("#808000")
        static let darkOliveGreen = Color.hex("#556B2F")
        static let mediumAquamarine = Color.hex("#66CDAA")
        static let darkSeaGreen = Color.hex("#8FBC8B")
        static let lightSeaGreen = Color.hex("#20B2AA")
        static let teal = Color.hex("#008080")
    }
    
    class HTMLBlue {
        static let lightCyan = Color.hex("#E0FFFF")
        static let darkCyan = Color.hex("#008B8B")
        static let paleTurquoise = Color.hex("#AFEEEE")
        static let aquamarine = Color.hex("#7FFFD4")
        static let turquoise = Color.hex("#40E0D0")
        static let mediumTurquoise = Color.hex("#48D1CC")
        static let darkTurquoise = Color.hex("#00CED1")
        static let cadetBlue = Color.hex("#5F9EA0")
        static let steelBlue = Color.hex("#4682B4")
        static let lightSteelBlue = Color.hex("#B0C4DE")
        static let powderBlue = Color.hex("#B0E0E6")
        static let lightBlue = Color.hex("#ADD8E6")
        static let skyBlue = Color.hex("#87CEEB")
        static let lightSkyBlue = Color.hex("#87CEFA")
        static let darkSkyBlue = Color.hex("#00BFFF")
        static let dodgerBlue = Color.hex("#1E90FF")
        static let cornflowerBlue = Color.hex("#6495ED")
        static let mediumSlateBlue = Color.hex("#7B68EE")
        static let royalBlue = Color.hex("#4169E1")
        static let mediumBlue = Color.hex("#0000CD")
        static let darkBlue = Color.hex("#00008B")
        static let navy = Color.hex("#000080")
        static let midnightBlue = Color.hex("#191970")
    }
    
    class HTMLBrown {
        static let cornsilk = Color.hex("#FFF8DC")
        static let blanchedAlmond = Color.hex("#FFEBCD")
        static let bisque = Color.hex("#FFE4C4")
        static let navajoWhite = Color.hex("#FFDEAD")
        static let wheat = Color.hex("#F5DEB3")
        static let burlyWood = Color.hex("#DEB887")
        static let tan = Color.hex("#D2B48C")
        static let rosyBrown = Color.hex("#BC8F8F")
        static let sandyBrown = Color.hex("#F4A460")
        static let goldenRod = Color.hex("#DAA520")
        static let darkGoldenrod = Color.hex("#B8860B")
        static let peru = Color.hex("#CD853F")
        static let chocolate = Color.hex("#D2691E")
        static let saddleBrown = Color.hex("#8B4513")
        static let sienna = Color.hex("#A0522D")
        static let brown = Color.hex("#A52A2A")
        static let maroon = Color.hex("#800000")
    }
    
    class HTMLWhite {
        static let snow = Color.hex("#FFFAFA")
        static let honeyDew = Color.hex("#F0FFF0")
        static let mintCream = Color.hex("#F5FFFA")
        static let azure = Color.hex("#F0FFFF")
        static let aliceBlue = Color.hex("#F0F8FF")
        static let ghostWhite = Color.hex("#F8F8FF")
        static let whiteSmoke = Color.hex("#F5F5F5")
        static let seaShell = Color.hex("#FFF5EE")
        static let beige = Color.hex("#F5F5DC")
        static let oldLace = Color.hex("#FDF5E6")
        static let floralWhite = Color.hex("#FFFAF0")
        static let ivory = Color.hex("#FFFFF0")
        static let antiqueWhite = Color.hex("#FAEBD7")
        static let linen = Color.hex("#FAF0E6")
        static let lavenderBlush = Color.hex("#FFF0F5")
        static let mistyRose = Color.hex("#FFE4E1")
    }
    
    class HTMLGray {
        static let gainsboro = Color.hex("#DCDCDC")
        static let lightGray = Color.hex("#D3D3D3")
        static let silver = Color.hex("#C0C0C0")
        static let darkGray = Color.hex("#A9A9A9")
        static let gray = Color.hex("#808080")
        static let dimGray = Color.hex("#696969")
        static let lightSlateGray = Color.hex("#778899")
        static let slateGray = Color.hex("#708090")
        static let darkSlateGray = Color.hex("#2F4F4F")
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
