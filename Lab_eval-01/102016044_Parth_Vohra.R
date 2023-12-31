company <- data.frame(
  C_ID = c(1,2,3,4,5,6), 
  name = c("infoco","telco","byju","jio","waterco","bhartico"), 
  date_of_establishment = c(22/10/1999,26/05/1998,19/04/1937,18/04/2022,14/06/2018,25/03/1946),
  contact_no = c(+19823892393,+908739473894,+928439573949,+1019728311887,+49518414458,+89416304458), 
  email = c("infoco@gmail.com","telco@gmail.com","byju@gmail.com","jio@gmail.com","waterco@gmail.com","bhartico@gmail.com"), 
  address = c("102 Patiala","165 Yamuna Nagar","2081 Gurgaon","368 Manesar","832 Ludhiana","983 Karnal"), 
  deals_in = c("Soapbar","Phenyl","Air Conditioner","Water Cooler","Mobile Phones","Microwave")
)

clients <- data.frame(
  CL_ID =  c(1,2,3,4,5,6,7,8,9,10),
  name = c("Parth","vanshika","bhavya","anmol","govind","ishita","tanya","rahul","niyati","srishti"),
  address = c("123 Yamuna Nagar","387 Ambala","3777 Jhajjar","276 Kashmir","982 bhiwani","378 rhotak","287 Gurgaon","287 Karnal","723 Patiala","738 Derabassi"), 
  contact_no = c(+918739473894,+918439573949,+919728311887,+919518414458,+919416304458,+919823892393,+917362846284,+918362846483,+919375937445,+918364756893), 
  email = c("parth@gmail.com","vanshika@gmail.com","bhavya@gmail.com","anmol@gmail.com","govind@gmail.com","ishita@gmail.com","tanya@gmail.com","rahul@gmail.com","niyati@gmail.com","srishti@gmail.com"), 
  product_req = c("Soapbar","Phenyl","Air Conditioner","Water Cooler","Mobile Phones","Microwave","Fridge","Two wheeler","Laptop","Wooden Furniture"), 
  quantity = c(10,20,3,6,30,3,5,2,10,5)
)

#q1
df <- list(clients$CL_ID,clients$name,clients$address,company$name,clients$product_req,clients$quantitiy)
str(df)

#q2
m <- mean(clients$quantity)
print(clients[clients$product_req > m,])

#q3
d <- company[company$date_of_establishment <= 2010 & substr(company$deals_in,1,15) == "Electronics Good"]
print(d)

#q4
c <- order(company$contact_no)
a <- company[c]
print(a)

#q5
b <- clients[substr(clients$address,1,5) == "Delhi"]
print(b)

#q6
df2 <- list(company$name,clients$name,clients$contact_no)
print(df2)

