import os
import subprocess

def run_hexo_server():
    print("\n[INFO] 清理并生成中...")
    os.system("hexo clean && hexo g")
    print("[INFO] 启动 Hexo 本地服务器...")
    # 新开独立窗口运行 hexo s
    subprocess.Popen('start "Hexo Server" cmd /k "hexo s"', shell=True)
    input("\n已在新窗口启动服务器，按 Enter 返回菜单...")

def deploy_hexo():
    print("\n[INFO] 部署到 GitHub...")
    os.system("hexo clean && hexo g && hexo d")
    input("\n部署完成，按 Enter 返回菜单...")

def git_push():
    msg = input("\n请输入 commit 内容: ")
    os.system(f'git add . && git commit -m "{msg}" && git push')
    input("\n推送完成，按 Enter 返回菜单...")

def main():
    while True:
        os.system("cls")
        print("=== Hexo 管理菜单 ===")
        print("1. 启动 Hexo 本地服务器 (clean g s)")
        print("2. 部署 Hexo 到 GitHub (clean g d)")
        print("3. Git 提交并推送")
        print("0. 退出")
        choice = input("\n请输入数字并回车: ")

        if choice == "1":
            run_hexo_server()
        elif choice == "2":
            deploy_hexo()
        elif choice == "3":
            git_push()
        elif choice == "0":
            print("退出程序。")
            break
        else:
            input("\n无效的选项，按 Enter 返回菜单...")

if __name__ == "__main__":
    main()
    input("\n按 Enter 键关闭窗口...")
