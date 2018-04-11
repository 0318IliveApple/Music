//
//  ViewController.swift
//  Music
//
//  Created by 中嶋裕也 on 2018/04/11.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioplayer: AVAudioPlayer!
    
    
    @IBAction func natsuPlayButton(){
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioplayer.play()
    }
    @IBAction func amePlayButton(){
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioplayer.play()
    }
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioplayer.play()
    }
    
    func setAudioPlayer(soundName:String,type:String){
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioplayer = try AVAudioPlayer(contentsOf: fileURL)
        }catch{
            print("ファイルが読み込みませんでした")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

