pix = lepton.pixCreate(30,30,1)
lepton.pixClearAll(pix)
lepton.pixSetPixel(pix,10,10,1)
out = lepton.pixDilateBrick(nil,pix,6,6)
out2 = lepton.pixCopy(nil,pix)
out2 = lepton.pixInvert(nil,out2)
out2 = lepton.pixErodeBrick(nil,out2,6,6)
out2 = lepton.pixInvert(nil,out2)
print(lepton.pixEqual(out,out2))
