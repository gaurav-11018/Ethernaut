# Elevator 

*Smart-Contract security and auditing* 🧑‍💻

# Ethernaut Challenge 11 : ELEVATOR!!!


WHAT YOU SHOULD KNOW BEFORE WRITING YOUR SOLIDITY CONTRACT:
This elevator won't let you reach the top of your building. Right?

Things that might help:

Sometimes solidity is not good at keeping promises.

This Elevator expects to be used from a Building.

# VULNERABLE CONTRACT:

![elevator](https://user-images.githubusercontent.com/79459872/190888160-5af2dc93-5692-4fcf-a586-472188e37050.png)

# ATTACK CONTRACT:
![attack](https://user-images.githubusercontent.com/79459872/190888175-f03d2082-6254-43f5-991e-b7b67eb90742.png)

# Key Security Takeaways

1. Interfaces do not guarantee contract security. Remember that just because another contract uses the same interface, doesn’t mean it will behave as intended!


2. Be careful when inheriting contracts that extend from interfaces. Each layer of abstraction introduces security issues through information obscurity. This makes each generation of the contract less and less secure than the previous.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
