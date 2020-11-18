//
//  QRCodeView.swift
//  QRCodeGenerator
//
//  Created by Student on 11/18/20.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView: View{
    let context=CIContext()
    let filter=CIFilter.qrCodeGenerator()
    var text: String
    var body: some View{
        Image(uiImage: generateQRCodeImage(text))
            .interpolation(.none)
            .resizable()
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    
    func generateQRCodeImage(_ string: String) -> UIImage{
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")
        if let qrCodeImage=filter.outputImage{
            if let qrCodeCGImage=context.createCGImage(qrCodeImage, from: qrCodeImage.extent){
                return UIImage(cgImage: qrCodeCGImage)
            }
        }
        return UIImage(systemName: "xmark") ?? UIImage()
    }
}
