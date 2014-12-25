class MagicUser < KlassStrategy

  def attack_matrix  
    h = Hash.new
    h[-10] =RunArray.expand(26,5, 24,5, 21,5, 20,15 )
    h[-9] = RunArray.expand(25,5, 23,5, 20,15)
    h[-8] = RunArray.expand(24,5, 22,5, 20,10, 19,10)
    h[-7] = RunArray.expand(23,5, 21,5, 20,10, 18,5)  
    h[-6] = RunArray.expand(22,5, 20,10, 19,5, 17,10)
    h[-5] = RunArray.expand(21,5, 20,10, 18,5, 16,10) 
    h[-4] = RunArray.expand(20,15, 17,5, 15,10)
    h[-3] = RunArray.expand(20,10, 19,5, 16,5, 14,10)
    h[-2] = RunArray.expand(20,10, 18,5, 15,5, 13,10)
    h[-1] = RunArray.expand(20,10, 17,5, 14,5, 12,10)
    h[0]  = RunArray.expand(20,5, 19,5, 16,5, 13,5, 11,10)
    h[1]  = RunArray.expand(20,5, 18,5, 15,5, 12,5, 10,5)
    h[2]  = RunArray.expand(19,5, 17,5, 14,5, 11,5, 9,10)
    h[3]  = RunArray.expand(18,5, 16,5, 13,5, 10,5, 8,10)
    h[4]  = RunArray.expand(17,5, 15,5, 12,5,  9,5, 7,10)
    h[5]  = RunArray.expand(16,5, 14,5, 11,5,  8,5, 6,10)
    h[6]  = RunArray.expand(15,5, 13,5, 10,5,  7,5, 5,10)
    h[7]  = RunArray.expand(14,5, 12,5,  9,5,  6,5, 4,10)
    h[8]  = RunArray.expand(13,5, 11,5,  8,5,  5,5, 3,10)
    h[9]  = RunArray.expand(12,5, 10,5,  7,5,  4,5, 2,10)
    h[10] = RunArray.expand(11,5,  9,5,  6,5,  3,5, 1,10)
    h
  end

  def saving_throws_matrix 
    h = Hash.new
    h[:poison] = RunArray.expand(14,5, 13,5, 11,5, 10,5, 8,10)
    h[:petrif] = RunArray.expand(13,5, 11,5,  9,5,  7,5, 5,10)
    h[:rod]    = RunArray.expand(11,5,  9,5,  7,5,  5,5, 3,10)
    h[:breath] = RunArray.expand(15,5, 13,5, 11,5,  9,5, 7,10)
    h[:spell]  = RunArray.expand(12,5, 10,5,  8,5,  6,5, 4,10)
    h
  end  


end
