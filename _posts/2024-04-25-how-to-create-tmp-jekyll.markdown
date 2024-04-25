---
layout: post
title:  "最低限で快適なお試しjekyllブログを作るtips"
date:   2024-04-25 Apr:04:1714012873 +0900
categories: blog
published: false
---

「なんとなく建てるか」で立たないjekyllブログのつくりかた（最低限）をサイトの試運転がてらメモっておきます。

# 大体こんな感じ

**vscodeで書くことを想定。**

- `<your-name>.github.io`レポジトリをつくる
  - つくって
  - ローカルにクローン (`git clone https[:]//~~`)
- RubyInstaller([https://rubyinstaller.org/](https://rubyinstaller.org/))を入れる
  - なんかCLIでEnter押す(小並感)
- 再起動してサイト生成
  - `gem install jekyll bundler`
  - `jekyll new <Your repository's path>`
- とりあえずビルドして喜ぶ
  - `bundle exec jekyll serve`
- 最低限のカスタマイズをする
  - MODIFY `_config.yml` : **title, email, description, xxx_usernameあたりを書き換える**
  - MODIFY `_posts/xxx` : **要らないので `published: false` を書き加える**
  - ADD `sc/newpost.sh` : **とりあえずワンポチで新しいポスト書けるようにする**
    - [こんな感じ](https://github.com/Kaniyama-t/Kaniyama-t.github.io/blob/master/sc/newpost.sh)のスクリプト組んどく
    - 最低限Gitbashやbashで動くように、 `.bashrc` へ `alias n="bash sc/newpost.sh"` とか書く
    - ↑をしたなら `source .bashrc` しとく
- ビルドする
  - `jekyll build`
  - `bundle exec jekyll serve` (<- Previewしたいなら)
- gitコマンドで世界へ上げる
  - `git add .`
  - `git commit -m "<MESSAGE>"`
  - `git push origin master`
- 最後にGithubのレポジトリページから、 `Settings > Pages > Build and deployment > Branch` のディレクトリ設定を `_site` にして終わり！

# もっと快適にしたい

- GithubのCodespaceを試してぇ
  - iPadとかでも書けると嬉しい
  - jekyllコマンドはPowerShellで動かさないとなのに、nコマンドはGitbashでしか動かん
    - vscodeのExtension書くのもありかも(小並感)
- 自作Extension...？
  - プレビューにthemeを適応したいな...
- ビルド周りをもっと簡単にしたい
  - `jekyll build` ~ `git add .` ~ 確認 が怠い
  - 全部vscodeのExtensionにしてcodespace上で動くようにしたら完璧...？（なんも知らんが）