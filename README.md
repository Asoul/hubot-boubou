I# hubot-boubou

Make hubot response 寶寶 style


```
You   : 寶寶知道 Github 嗎？

Hubot : 寶寶知道 Github，只是寶寶不說
```

```
You   : 寶寶還好嗎?

Hubot : 寶寶心裡苦，只是寶寶不說
```

```
You   : 今天發生地震，好恐怖啊

Hubot : 嚇死寶寶了
```

## Installation

1. In hubot project repo, run: `npm install hubot-boubou --save`  
2. Add **hubot-boubou** to your `external-scripts.json`:

```json
[
  "hubot-boubou"
]
```

## Commands:

- `寶寶知道<something>嗎?` -> `寶寶知道<something>，只是寶寶不說`

Actual regex: `/寶寶[你妳]?知道(.*)嗎[\?？]?/i`


- `寶寶還好嗎?` -> `寶寶心裡苦，只是寶寶不說`

Actual regex: `/寶寶還好嗎[\?？]?/i`

- `好可怕啊` -> `嚇死寶寶了`

Actual regex: `/.*[好太真很]?(可怕|恐怖|詭異|奇怪)啊?.*/i`
