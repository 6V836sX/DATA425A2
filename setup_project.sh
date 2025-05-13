# 请先 cd 到你已经 clone 的 GitHub 项目根目录！

# 创建子目录
mkdir -p report notebooks data figures env utils

# 创建空的主报告文件
touch report/report.md

# 示例 Jupyter Notebook 文件（可删除）
touch notebooks/exp1_finetune_lr01.ipynb
touch notebooks/exp2_transfer_resnet.ipynb

# 数据说明文档
echo "# Dataset Instructions" > data/README.md

# 占位图表文件
touch figures/fig1_accuracy_curve.png
touch figures/fig2_conf_matrix.png

# 环境依赖文件（pip 与 conda）
echo "# pip requirements" > env/requirements.txt
echo "# conda environment" > env/environment.yml

# 工具函数文件
touch utils/train_helpers.py

# 项目主文档 README（只创建，不覆盖已有）
if [ ! -f README.md ]; then
cat << EOF > README.md
# Data 425 - Assignment 2: Reproducibility Study

This project aims to reproduce key experiments from:
- Li et al. (2020), *Rethinking the Hyperparameters for Fine-tuning*
- Kornblith et al. (2019), *Do Better Imagenet Models Transfer Better?*

See \`report/report.md\` for the written report.
EOF
fi

# .gitignore 文件（只创建，不覆盖已有）
if [ ! -f .gitignore ]; then
cat << EOF > .gitignore
__pycache__/
.ipynb_checkpoints/
*.pyc
.DS_Store
.env/
*.ckpt
EOF
fi

# 添加并提交
git add .
git commit -m "Setup project folder structure and placeholder files"
