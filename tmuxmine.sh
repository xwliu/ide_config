# !/bin/sh

tmux has-session -t development
if [ $? -ne 0 ];then
	tmux new-session -s development -n 3288N -d
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3288_ANDROID71_TABLET_V20/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 14' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3288_ANDROID71_TABLET_V20/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 14' C-m C-l

	tmux new-window -n 3288L -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3288-510-V10/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 7' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 4' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3288-510-V10/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 7' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 4' C-m C-l
	
	tmux new-window -n A40 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/allwinner/A40I-V1.0/android/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 24' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/allwinner/A40I-V1.0/' C-m C-l
	tmux split-window -h -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/allwinner/A40I-V1.0/' C-m C-l
	
	tmux new-window -n 3399 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3399_ANDROID71_Industry_V10/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 19' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/RK3399_ANDROID71_Industry_V10/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 19' C-m C-l

	tmux new-window -n 3288N_compare -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/compare/RK3288_ANDROID71_TABLET_V20/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 14' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/rockchip/compare/RK3288_ANDROID71_TABLET_V20/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'lunch 14' C-m C-l

	tmux new-window -n GM620S -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/qualcomm/8953/ap/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'GM620S-userdebug' C-m C-l
	tmux split-window -v -p 20 -t development
	tmux send-keys -t development 'cd /home/disk2/lxw/workspace/qualcomm/8953/ap/' C-m
	tmux send-keys -t development 'source ~/.javaconfig 8' C-m
	tmux send-keys -t development 'source build/envsetup.sh' C-m
	tmux send-keys -t development 'GM620S-userdebug' C-m C-l

	tmux select-window -t development:0
	tmux select-pane -t development:0.0
	
	#tmux new-session -s development -n editor -d
	#tmux send-keys -t development 'cd ~/mtools' C-m
	#tmux send-keys -t development 'vim' C-m
	#tmux split-window -v -p 10 -t development
	#tmux select-layout -t development main-horizontal
	#tmux send-keys -t development:1.2 'cd ~/mtools' C-m
	#tmux new-window -n console -t development
	#tmux send-keys -t development:2 'cd ~/mtools' C-m
	#tmux select-window -t development:1
fi
tmux attach -t development
