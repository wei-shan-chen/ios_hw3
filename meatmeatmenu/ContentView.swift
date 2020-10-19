//
//  ContentView.swift
//  meatmeatmenu
//
//  Created by User03 on 2020/10/18.
//
//https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/navigationview-%E9%80%A0%E6%88%90%E7%9A%84-swiftui-animation-%E5%95%8F%E9%A1%8C-a601bd7594f0
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            TabView {
            
                List{
                    ScrollView( .horizontal, showsIndicators:false){
                        HStack(spacing : 20){
                            ForEach(0..<6){(item)in
                                Image("up\(item)").resizable()
                                    .scaledToFill()
                                    .frame(width: 200)
                                    .clipped()
                                    .border(Color.black, width: 2)
                            }
                        }
                        .frame(height: 200)
                    }
                    VStack(alignment: .leading){
                        Text("網美技能~")
                            .fontWeight(.black)
                        HStack{
                            Image("n0")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150)
                                .clipped()
                            NavigationLink(
                                destination:Right1View()){
                                Text("修圖")
                            }
                        }
                        .frame(height:100)
                    }
                    .foregroundColor(Color.black)
                    
                    HStack{
                        Image("w0")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150)
                            .clipped()
                        NavigationLink(
                            destination:Right2View()){
                            Text("拍照技巧")
                        }
                        
                    }
                    .frame(height:100)
                    HStack{
                        Image("s0")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150)
                            .clipped()
                        NavigationLink(
                            destination:Right1View()){
                            Text("南部")
                        }
                        
                    }
                    .frame(height:100)
                    HStack{
                        Image("e0")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150)
                            .clipped()
                        NavigationLink(
                            destination:Right1View()){
                            Text("東部")
                        }
                        
                    }
                    .frame(height:100)
                }
                .padding().background(Color(red: 1, green: 0.6, blue: 0.6)).cornerRadius(20)
        
     
                List{
                    Text("吃~")
                    .fontWeight(.black)
                    ScrollView( .horizontal, showsIndicators:false){
                        
                        HStack{
                            NavigationLink(
                                destination:Rightn1View()){
                                Image("n1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150,alignment: .top)
                                    .clipped()
                                
                            }
                            NavigationLink(
                                destination:Rightn2View()){
                                Image("n2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150,alignment: .top)
                                    .clipped()
                            }
                        }
                        .frame(height:150)
                        HStack{
                            NavigationLink(
                                destination:Rightn3View()){
                                Image("n3")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150,alignment: .top)
                                    .clipped()
                                
                            }
                            NavigationLink(
                                destination:Rightn4View()){
                                Image("n4")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150,alignment: .top)
                                    .clipped()
                            }
                        }
                        .frame(height:150)
                        
                    }
                    .foregroundColor(Color.black)
                    Text("玩~")
                    .fontWeight(.black)
                    
                    
                    ScrollView( .horizontal, showsIndicators:false){
                        
                        HStack( spacing: 5){
                            ForEach(5..<7){(item) in
                            Image("n\(item)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150,alignment: .top)
                                .clipped()
                            }
                        }
                        .frame(height:180)
                        HStack{
                            ForEach(7..<9){(item) in
                            Image("n\(item)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150,alignment: .top)
                                .clipped()
                            }
                        }
                        .frame(height:140)
                        
                    }
                    .foregroundColor(Color.black)
                    
                   
                }
                .padding().background(Color(red: 0.5, green: 0.6, blue: 0.8)).cornerRadius(20)
                
           
        
            }
            .tabViewStyle(PageTabViewStyle())
            .navigationBarTitle("網美景點")
        }
    }
}
struct Rightn1View: View{
    @State private var rotateDegree: Double = 0
    var body: some View {
        
        VStack{
            Image("n1.1")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
            Text("鍋貼7元\n酸辣湯35元\n 鍋貼底層皮煎得焦脆、上層皮軟Q，內餡使用豬後腿、三星蔥及高麗菜 ，味道帶有蔬菜自然的甜 ，原味就很好吃，不過沾點店家調製的醋辣醬油也不錯 。酸辣湯湯底用大骨熬煮，配料相當豐富，味道均勻。由於當天晚上七點前往，水煎包已售完，沒口福品嚐 。內用座位已滿，只能在外面座位食用 ")
                
        }
        .rotationEffect(.degrees(rotateDegree))
        .animation(Animation.linear(duration: 2))
        .onAppear {rotateDegree = 360}
        .background(Color(red: 0.6, green: 0.6, blue: 0.9))
    }
}
struct Rightn1View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightn1View()
        }
    }
}
struct Rightn2View: View{
    var body: some View {
        Link(destination: URL(string: "https://www.instagram.com/hanjiji8/")!, label: {
            VStack{
                Image("n2.1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipped()
                Text("菜單部分有部隊鍋、韓國炸雞、馬鈴薯排骨湯、海鮮煎餅、辣炒年糕、銅板烤肉、石鍋拌飯、飲品等，選擇品項滿多的價位落在$45~$520之間\n海鮮煎餅的，裡面添加了韭菜、蝦仁、花枝等，香煎而成~帶點微微的厚度口感軟Q，沾上特調醬汁清爽又解膩，外層的餅皮則帶點酥脆口感，讓人忍不住一口接一口")
                    .transition(.scale)
            }
            .animation(.easeInOut(duration: 3))
            .onAppear()
            .background(Color(red: 0.6, green: 0.6, blue: 0.9))
            .cornerRadius(20)
        })
        .buttonStyle(PlainButtonStyle())
    }
}
struct Rightn2View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightn2View()
        }
    }
}
struct Rightn3View: View{
    var body: some View {
        VStack{
            Image("n3.1")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
            Text("這裡的麵線就只有大腸沒有蚵仔,還有一個特色就是不加香菜而是九層塔,老闆還會先問要不要蒜蓉跟醬油,喜還重口味的都可以先”注文”,小吃攤也可以完全客製化服務喔,很親切的在地人情味小吃店.\n麵線湯頭的口味略偏甜一點,滿滿蒜香正好符合我的喜好,加上滷到入味軟Q的大腸也很對味,至於九層塔不喜歡的也可以不加喔")
                .transition(.slide)
        }
        .animation(.easeInOut(duration: 3))
        .padding()
        .background(Color(red: 0.6, green: 0.6, blue: 0.9))
        .cornerRadius(20)
        
    }
}
struct Rightn3View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightn3View()
        }
    }
}
struct Rightn4View: View{
    var body: some View {
        VStack{
            Image("n4.1")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
            Text("物價居高不下、薪水不漲價是不少民眾的痛處，尋找高CP值的商品已經成為民眾的小確幸。有網友近期發文分享自己買的鮭魚炒飯，只見便當內的鮭魚肉大塊、飯的份量很足，整個便當料都快滿出來，原PO表示他在萬華花了80元買的，下次要帶臉盆去買。 ")
                .transition(.identity)
        }
        .animation(.easeInOut(duration: 2))
        .padding()
        .background(Color(red: 0.6, green: 0.6, blue: 0.9))
        .cornerRadius(20)
        
    }
}
struct Rightn4View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightn4View()
        }
    }
}
struct Right1View: View{
    @State private var scale : CGFloat = 1
    @State private var brightness : Double = 0
    @State private var blurness : CGFloat = 0
    @State private var rotation : Double = 0
    @State private var contract : Double = 1
    @State private var grayscale : Double = 1
    @State private var saturation : Double = 1
    var body: some View {
        GeometryReader{geometry in
            VStack{
                Image("b1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .clipped()
                    .scaleEffect(scale)
                    .brightness(brightness)
                    .blur(radius: blurness)
                    .rotationEffect(.degrees(rotation))
                    .contrast(contract)
                    .grayscale(grayscale)
                    .saturation(saturation)
                Form{
                    VStack{
                        Group{
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                    ){
                                    Text("")
                                }
                                .accentColor(.red)
                                }
                        }
                        Group{
                            HStack{
                                Text("亮度")
                                Slider(value: $brightness,in: 0...1,minimumValueLabel:Image(systemName: "sun.max.fill").imageScale(.small),maximumValueLabel:Image(systemName: "sun.max.fill").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.orange)
                            }
                        }
                        Group{
                            HStack{
                                Text("模糊")
                                Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.yellow)
                            }
                        }
                        Group{
                            HStack{
                                Text("旋轉")
                                Slider(value: $rotation, in: 0...360,minimumValueLabel:Image(systemName: "person.fill").imageScale(.small),maximumValueLabel:Image(systemName: "person.fill.turn.down").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.green)
                            }
                        }
                        Group{
                            HStack{
                                Text("對比")
                                Slider(value: $contract, in: 1...3,minimumValueLabel:Image(systemName: "arrow.right").imageScale(.small),maximumValueLabel:Image(systemName: "arrow.left").imageScale(.large)) {
                                    Text("")
                                }
                            }
                        }
                        Group{
                            HStack{
                                Text("灰階")
                                Slider(value: $contract, in: 0...2,minimumValueLabel:Image(systemName: "circle").imageScale(.small),maximumValueLabel:Image(systemName: "circle.fill").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.purple)
                            }
                        }
                        Group{
                            HStack{
                                Text("飽和度")
                                Slider(value: $contract, in: 0...10,minimumValueLabel:Image(systemName: "wifi.slash").imageScale(.small),maximumValueLabel:Image(systemName: "wifi").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.black)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("修圖")
    }
}
struct Right1View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Right1View()
        }
    }
}
struct Right2View: View{
    @State private var show = false
    var body: some View {
        VStack{
            Button(show ? "connect~" : "click"){
                show.toggle()
            }
            if show{
                Link(destination: URL(string: "https://learningisf.com/must-take-photo-skills/")!, label: {
                Image("b2")
                    .transition(.customTransition)
                })
                .buttonStyle(PlainButtonStyle())
                    
            }else{
                Image("b2")
                    .hidden()
            }
            
        }
        .animation(.easeInOut(duration: 3))
    }
}
extension AnyTransition{
    static var customTransition : AnyTransition{
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.offset(x: 200, y: 200)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
struct RightView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Right2View()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 struct ContentView: View {

     var body: some View {
         NavigationView {
             
                 List {
                     ForEach(0 ..< 100) { item in
                         Text("\(item)")
                     }
                 }
                 .onAppear(perform: {
                     let barAppearance = UINavigationBarAppearance()
                     barAppearance.backgroundColor = UIColor.red
                     UINavigationBar.appearance().standardAppearance = barAppearance

                     UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
                 })
             
         }
     }
 }
 */
