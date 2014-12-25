class Cleric

  def attack_matrix  
    h = Hash.new
    h[-10]= RunArray.expand(25,3,23,3,21,3,20,9,19,10) 
    h[-9] = RunArray.expand(24,3,22,3,20,9,19,3,18,10)
    h[-8] = RunArray.expand(23,3,21,3,20,9,18,3,17,10)
    h[-7] = RunArray.expand(22,3,20,9,19,3,17,3,16,10)
    h[-6] = RunArray.expand(21,3,20,9,18,3,16,3,15,10)
    h[-5] = RunArray.expand(20,9,19,3,17,3,15,3,14,10)
    h[-4] = RunArray.expand(20,6,18,3,16,3,14,3,13,3,12,10)
    h[-3] = RunArray.expand(20,6,19,3,17,3,15,3,13,3,12,10)
    h[-2] = RunArray.expand(20,6, 18,3, 16,3, 14,3, 12,3, 11,10)
    h[-1] = RunArray.expand(20,3, 19,3, 17,3, 15,3, 13,3, 11,3, 10,10)
    h[0]  = RunArray.expand(20,3, 18,3, 16,3, 14,3, 12,3, 10,3, 9,10)
    h[1]  = RunArray.expand(19,3, 17,3, 15,3, 13,3, 11,3,  9,3, 8,10)
    h[2]  = RunArray.expand(18,3, 16,3, 14,3, 12,3, 10,3,  8,3, 7,10)
    h[3]  = RunArray.expand(17,3, 15,3, 13,3, 11,3,  9,3,  7,3, 6,10)
    h[4]  = RunArray.expand(16,3, 14,3, 12,3, 10,3,  8,3,  6,3, 5,10)
    h[5]  = RunArray.expand(15,3, 13,3, 11,3,  9,3,  7,3,  5,3, 4,10)
    h[6]  = RunArray.expand(14,3, 12,3, 10,3,  8,3,  6,3,  4,3, 3,10)
    h[7]  = RunArray.expand(13,3, 11,3,  9,3,  7,3,  5,3,  3,3, 2,10)
    h[8]  = RunArray.expand(12,3, 10,3,  8,3,  6,3,  4,3,  2,3, 1,10)
    h[9]  = RunArray.expand(11,3,  9,3,  7,3,  5,3,  3,3,  1,3, 0,10)
    h[10] = RunArray.expand(10,3,  8,3,  6,3,  4,3,  2,3,  0,3, -1,10)
    h
  end

  def saving_throws_matrix 
    h = Hash.new
    h[:poison] = RunArray.expand(10,3, 9,3, 7,3, 6,3, 5,3, 4,3, 2,10)
    h[:petrif] = RunArray.expand(13,3, 12,3, 10,3, 6,3, 8,3, 7,3, 5,10)
    h[:rod]    = RunArray.expand(14,3, 13,3, 11,3, 10,3,  9,3,  8,3, 6,10)
    h[:breath] = RunArray.expand(16,3, 15,3, 14,3, 13,3, 11,3, 10,3, 8,10)
    h[:spell]  = RunArray.expand(15,3, 14,3, 12,3, 11,3, 10,3,  9,3, 7,10)
    h
  end  


end