class Thief

  def attack_matrix  
    h = Hash.new
    h[-10] = RunArray.expand(26,4, 24,4, 21,4, 20,8, 20,10)
    h[-9] = RunArray.expand(25,4, 23,4, 20,12, 19,10)
    h[-8] = RunArray.expand(24,4, 22,4,  20,12, 18,10)
    h[-7] = RunArray.expand(23,4, 21,4,  20,8, 19,4, 17,10)
    h[-6] = RunArray.expand(22,4, 20,12, 18,4, 16,10)
    h[-5] = RunArray.expand(21,4, 20,8,  19,4, 17,4, 15,10)
    h[-4] = RunArray.expand(20,12, 18,4, 16,4, 14,10)
    h[-3] = RunArray.expand(20,8, 19,4, 17,4, 15,4, 13,10)
    h[-2] = RunArray.expand(20,8, 18,4, 16,4, 14,4, 12,10)
    h[-1] = RunArray.expand(20,8, 17,4, 15,4, 13,4, 11,10)
    h[0]  = RunArray.expand(20,4, 19,4, 16,4, 14,4, 12,4, 10,10)
    h[1]  = RunArray.expand(20,4, 18,4, 14,4, 13,4, 11,4,  9,10)
    h[2]  = RunArray.expand(19,4, 17,4, 14,4, 12,4, 10,4, 8,10)
    h[3]  = RunArray.expand(18,4, 16,4, 13,4, 11,4, 9,4, 7,10)
    h[4]  = RunArray.expand(17,4, 15,4, 12,4, 10,4, 8,4, 6,10)
    h[5]  = RunArray.expand(16,4, 14,4, 11,4, 9,4,  7,4, 5,10)
    h[6]  = RunArray.expand(15,4, 13,4, 10,4, 8,4,  6,4, 4,10)
    h[7]  = RunArray.expand(14,4, 12,4,  9,4, 7,4,  5,4, 3,10)
    h[8]  = RunArray.expand(13,4, 11,4,  8,4, 6,4,  4,4, 2,10)
    h[9]  = RunArray.expand(12,4, 10,4,  7,4, 5,4,  3,4, 1,10)
    h[10] = RunArray.expand(11,4,  9,4,  6,4, 4,4,  2,4, 0,10)
    h
  end

  def saving_throws_matrix
    h = Hash.new
    h[:poison] = RunArray.expand(13,4, 12,4, 11,4, 10,4, 9,4, 8,10)
    h[:petrif] = RunArray.expand(12,4, 11,4, 10,4,  9,4, 8,4, 7,10)
    h[:rod]    = RunArray.expand(14,4, 12,4, 10,4,  8,4, 6,4, 4,10)
    h[:breath] = RunArray.expand(16,4, 15,4, 14,4,  13,4, 12,4, 11,10)
    h[:spell]  = RunArray.expand(15,4, 13,4, 11,4,  9,4, 7,4, 5,10)
    h
  end  

end