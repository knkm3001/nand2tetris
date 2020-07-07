# nand2tetris
「コンピュータシステムの理論と実装」各チャプターのプロジェクトのソースコード

## リンク
- [公式サポートサイト](https://www.nand2tetris.org/)  
- [公式サポートツール ダウンロードリンク](https://drive.google.com/file/d/0B9c0BdDJz6XpZUh3X2dPR1o0MUE/view)  
- [ハードウェアシミュレーター チュートリアル](https://b1391bd6-da3d-477d-8c01-38cdf774495a.filesusr.com/ugd/44046b_bfd91435260748439493a60a8044ade6.pdf)  

## Tips
- ハードウェアシミュレーター
  - bit列を出力する関数ではoutを分割できる  
  ```
  Not16(in=x,out=x,out[0..7]=out1,out[8..15]=out2);
  ```
  - bit列を分割して引数にわたす場合
  予めINで渡された引数(バス)は分割して論理回路に渡せるが、特定の回路内で自分で宣言したピン(内部バス)は別の論理回路に分割して渡せない。
  ```
  Xxx(in=x[0...7],out=tmp);  // OK
  Yyy(in=tmp[0..7],out=out); // NG
  ```
