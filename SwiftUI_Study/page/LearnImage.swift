    //
    //  SwiftUIView.swift
    //  SwiftUIdemo
    //
    //  Created by xc on 2019/10/9.
    //  Copyright © 2019 xc. All rights reserved.
    //
    
    import SwiftUI
    
    struct LearnImage: View {
        
        @State
        private var urlImage: UIImage? = nil
        let placeholderImage = UIImage(named: "logoicon")!
        
        func downloadImage(){
            guard let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1570608073139&di=53e047d6636ea7034063e9d0c80565bb&imgtype=0&src=http%3A%2F%2Fpic16.nipic.com%2F20111006%2F6239936_092702973000_2.jpg") else {
                return
            }
            URLSession.shared.dataTask(with: url){(data,response,error) in
                if let data=data,let image = UIImage(data: data){
                    self.urlImage=image
                }else{
                    print("error: \(String(describing: error))")
                }
            }.resume()
        }
        
        var body: some View {
            VStack(alignment: .leading, spacing: 0){
                Section(header: LearnImageSectionHeader(name:"本地画图片")){
                    Image(uiImage:placeholderImage)
                        .resizable()
                        .onTapGesture {
                            print("点击了本地图片")
                    }
                }
                Section(header:LearnImageSectionHeader(name: "网络图片")){
                    Image(uiImage: self.urlImage ?? placeholderImage)
                        .resizable()
                        .onAppear(perform: downloadImage)
                        .onTapGesture {
                            print("点击了网络图片")
                    }
                }
            }
//            .statusBar(hidden: false)。 //设置无效不知道什么条件下才有效果
            .navigationBarHidden(false)  //是否隐藏title栏
            .navigationBarTitle("Image",displayMode: .inline)
        }
    }
    
    struct LearnImage_Previews: PreviewProvider {
        static var previews: some View {
            LearnImage()
        }
    }
