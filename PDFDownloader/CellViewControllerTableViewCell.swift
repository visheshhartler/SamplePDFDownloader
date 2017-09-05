//
//  CellViewControllerTableViewCell.swift
//  PDFDownloader
//
//  Created by HartleyLabMacMini on 04/09/17.
//  Copyright © 2017 HartleyLabMacMini. All rights reserved.
//

import UIKit

protocol cellDelegate {
    func didClickDownloadButton(cell: UITableViewCell)
    func didClickViewButton(cell: UITableViewCell)
}

class CellViewControllerTableViewCell: UITableViewCell {

    var delegate: cellDelegate?
    @IBOutlet weak var btnView: UIButton!
    @IBOutlet weak var btnDownload: UIButton!
    @IBOutlet weak var NameLabel: UILabel!
    
    
    @IBAction func viewClicked(_ sender: Any) {
        delegate?.didClickViewButton(cell: self)
    }
    
    @IBAction func downloadClicked(_ sender: Any) {
        delegate?.didClickDownloadButton(cell: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnView.isEnabled = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
