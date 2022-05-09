Program TestDSS
      Real X1,X2,X3
      Integer IFLTAB(600),IOSTAT,DSSMES
      Character(len=4) MUNIT,MLEVEL
      Character(len=64) CNAME
      Open(UNIT=2,FILE='TEST.OUT',STATUS='UNKNOWN')
      X1=2.0
      X2=3.0
      X3=X1+X2
      Write(2,100) X1,X2,X3
100   Format('X1,X2,X3=',3F8.2)
!
      IOSTAT=0
      CNAME='DSSFILE'
      Write(2,200) IOSTAT,Adjustl(CNAME)
200   Format('IOSTAT,Adjustl(CNAME)=',I5,3x,A64)
!
      Call ZSET('MUNIT','',14)
      Call ZSET('MLEVEL','',2)
      Call ZSET('UNIT','',25)
      Call ZOPEN(IFLTAB,CNAME,IOSTAT)
      End
