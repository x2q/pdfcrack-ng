Here are the steps I took:

   1.

      I installed pdfcrack from the Ubuntu repositories. (If your OS doesn't have a pdfcrack package available, you can download the program from http://pdfcrack.sourceforge.net/ and compile it. There even seems to be some version out there that's compiled for Windows -- Google is your friend.
   2.

      I downloaded the Openwall password wordlist all.gz from ftp://ftp.openwall.com/pub/wordlists/ . Maybe a smaller, more specific word list will suffice for you. Or you can buy a larger word list CD from Openwall: http://www.openwall.com/wordlists/ ; http://www.openwall.com/passwords/wordlists/ Or you can try to brute force the fucker without a word list. ;-)
   3.

      I then ran:

      $ pdfcrack -s -w all.lst /blahblah/folder/blahblah-file.pdf
      PDF version 1.5
      Security Handler: Standard
      V: 2
      R: 3
      P: -1028
      Length: 128
      Encrypted Metadata: True
      FileID: 0e3fdb7c0a08ff69e8blahblahaf1515
      U: ce1672f4eblah2a08f2fblah4f14bda000000000000000000000000000000000
      O: 8c3bf2050db0303d41adblahb76ef7c6e4ebbc569a747311606368360ee0blah
      found user-password: 'Blahblah'

This was a triumph. I'm making a note here: GREAT SUCCESS!

PS: But it doesn't even end there. I also found this site, which explains how to convert the encrypted pdf for a PostScript file, and how to generate an unencrypted PDF file from that PS file. This doesn't appear to be totally 1:1, as for example font sizes, etc. can change. But if you just want the information to be available unencrypted and don't require pixel-perfect preservation of the original layout, then this works pretty well.
