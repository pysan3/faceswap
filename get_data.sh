pip install -r requirements.txt
ffmpeg -i he/hoge.mp4 -vf fps=30 he/hoge%06d.png
python img_collector.py -t hashimotokanna -n 10000
python faceswap.py extract -i he -o hisface
python faceswap.py extract -i me -o myface
python faceswap.py train -A hisface -B myface -m models -p