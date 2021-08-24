# learn-haskell

- Learn Haskell with...
  - [すごい Haskell たのしく学ぼう!](https://www.amazon.co.jp/dp/4274068854)
  - [Haskell らしさって？「型」と「関数」の基本を解説！【第二言語としての Haskell】 \- エンジニア Hub](https://eh-career.com/engineerhub/entry/2017/08/25/110000)
  - [こわくない Haskell 入門（初級） \- Qiita](https://qiita.com/arowM/items/9ebfb7cafecd99290663)
  - [Haskell 入門 \| haskell](https://lotz84.github.io/haskell/)

## Installation

- [Stack](https://docs.haskellstack.org/en/stable/README/) をインストール
- [vscode-haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) をインストール

## How to write code

```sh
# 以下のように VSCode を開かないと `project requires ghc but it isn't installed` になる
$ stack exec code .
```

## How to execute

```sh
$ echo 'main :: IO ()\nmain = putStrLn "Hello World!"' > 'hello.hs'

# ghci でロードして関数を実行
$ stack ghci
> :l hello.hs
> main
Hello World!
> :q

$ stack runghc hello.hs
Hello World!
```
