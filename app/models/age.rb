class Age < ActiveHash::Base
  self.data = [
    {id: 1, name: "18"},
    {id: 2, name: "19"},
    {id: 3, name: "20"},
    {id: 4, name: "21"},
    {id: 5, name: "22"},
    {id: 6, name: "23"},
    {id: 7, name: "24"},
    {id: 8, name: "25"},
    {id: 9, name: "26"},
    {id: 10, name: "27"},
    {id: 11, name: "28"},
    {id: 12, name: "29"},
    {id: 13, name: "30"},
    {id: 14, name: "31"},
    {id: 15, name: "32"},
    {id: 16, name: "33"},
    {id: 17, name: "34"},
    {id: 18, name: "35"},
    {id: 19, name: "36"},
    {id: 20, name: "37"},
    {id: 21, name: "38"},
    {id: 22, name: "39"},
    {id: 23, name: "40"},
    {id: 24, name: "41"},
    {id: 25, name: "42"},
    {id: 26, name: "43"},
    {id: 27, name: "44"},
    {id: 28, name: "45"},
    {id: 29, name: "46"},
    {id: 30, name: "47"},
    {id: 31, name: "48"},
    {id: 32, name: "49"},
    {id: 33, name: "50"},
    {id: 34, name: "51"},
    {id: 35, name: "52"},
    {id: 36, name: "53"},
    {id: 37, name: "54"},
    {id: 38, name: "55"},
    {id: 39, name: "56"},
    {id: 40, name: "57"},
    {id: 41, name: "58"},
    {id: 42, name: "59"},
    {id: 43, name: "60"},
    {id: 44, name: "61"},
    {id: 45, name: "62"},
    {id: 46, name: "63"},
    {id: 47, name: "64"},
    {id: 48, name: "65"},
    {id: 49, name: "66"},
    {id: 50, name: "67"},
    {id: 51, name: "68"},
    {id: 52, name: "69"},
    {id: 53, name: "70"},
    {id: 54, name: "71"},
    {id: 55, name: "72"},
    {id: 56, name: "73"},
    {id: 57, name: "74"},
    {id: 58, name: "75"},
    {id: 59, name: "76"},
    {id: 60, name: "77"},
    {id: 61, name: "78"},
    {id: 62, name: "79"},
    {id: 63, name: "80"},
    {id: 64, name: "81"},
    {id: 65, name: "82"},
    {id: 66, name: "83"},
    {id: 67, name: "84"},
    {id: 68, name: "85"},
    {id: 69, name: "86"},
    {id: 70, name: "87"},
    {id: 71, name: "88"},
    {id: 72, name: "89"},
    {id: 73, name: "90"},
    {id: 74, name: "91"},
    {id: 75, name: "92"},
    {id: 76, name: "93"},
    {id: 77, name: "94"},
    {id: 78, name: "95"},
    {id: 79, name: "96"},
    {id: 80, name: "97"},
    {id: 81, name: "98"},
    {id: 82, name: "99"},
    {id: 83, name: "100"},
  ]
  include ActiveHash::Associations
  has_many :profiles
end