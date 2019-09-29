pip install -r requirements.txt
ffmpeg -i he/scene.mp4 -vf fps=30 he/scene%06d.png
python faceswap.py extract -i he -o hisface
python faceswap.py extract -i me -o myface
python faceswap.py train -A hisface -B myface -m models -p