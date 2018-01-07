A simple blockchain contract application that call external function from another contract 

# Prerequisites 

You first need to install and deploy [ScoreStore](https://github.com/dalenguyen/blockchain-score-store) contract. 

After that, you have to get the *address information* from this application through console. 

```
truffle console
```

```
ScoreStore.deployed() // it's at the end of the line
```

Then you replace the address info in the file *MyGame.sol*

# Testing 

After deploy this contract either on development or production. You can call an external function from ScoreStore contract. 

```
truffle console
```

```
var mg
MyGame.deployed().then(function(deployed){mg=deployed;});
mg.ShowScore.call('Dale Nguyen').then(function(returnValue){console.log(returnValue);});

{ [String: '10'] s: 1, e: 1, c: [ 10 ] } // result
```

*Source from [Pluralsight](https://www.pluralsight.com/courses/blockchain-fundamentals)*