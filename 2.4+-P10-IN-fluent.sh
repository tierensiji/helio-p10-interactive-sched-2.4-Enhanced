su
#2.4+流畅版，带来新的流畅体验。
#作者：铁人司机————一个热爱安卓代码的北中医学生。
#一款优秀的调度首先体现在核心控制上，滑稽
#内测版暂时不做代码解释，节约时间，以最快速度，全力投入开发
echo "9 1" > /proc/ppm/policy_status
echo 1 > /proc/ppm/root_cluster
echo 3 > /proc/ppm/policy/hica_power_state
echo "0 2" > /proc/ppm/policy/userlimit_min_cpu_core
echo "1 2" > /proc/ppm/policy/userlimit_min_cpu_core
echo "0 4" > /proc/ppm/policy/userlimit_max_cpu_core
echo "1 4" > /proc/ppm/policy/userlimit_max_cpu_core
echo "0 338000" > /proc/ppm/policy/userlimit_min_cpu_freq
echo "1 663000" > /proc/ppm/policy/userlimit_min_cpu_freq
echo "0 910000" > /proc/ppm/policy/userlimit_max_cpu_freq
echo "1 1807000" > /proc/ppm/policy/userlimit_max_cpu_freq

#修改interactive参数
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/boost
echo 1 > /sys/devices/system/cpu/cpufreq/interactive/boost
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "18000 689000:28000 819000:38000 910000:38000 1001000" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo 819000 > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
echo 85 > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo 8000 > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/target_loads
echo "10 156000:20 338000:30 494000:40 598000:60 689000:75 819000:85 910000:90 20 286000:30 663000:40 871000:50 1027000:55 1196000:65 1495000:75 1651000:85 1807000:90" > /sys/devices/system/cpu/cpufreq/interactive/target_loads
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo 50000 > /sys/devices/system/cpu/cpufreq/interactive/timer_slack
echo 50000 > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
chmod 0755 /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
echo 0 > /sys/devices/system/cpu/cpufreq/interactive/io_is_busy

#开启hotplug，修改动态变频参数
echo 1 > /proc/hps/enabled
chmod 0755 /proc/hps/num_base_perf_serv
echo "4 4" > /proc/hps/num_base_perf_serv
chmod 0755 /proc/hps/input_boost_cpu_num
chmod 0755 /proc/hps/big_task_enabled
echo 4 > /proc/hps/input_boost_cpu_num
echo 1 > /proc/hps/big_task_enabled
chmod 0755 /proc/hps/down_threshold
echo 30 > /proc/hps/down_threshold
chmod 0755 /proc/hps/down_times
echo 1 > /proc/hps/down_times
chmod 0755 /proc/hps/up_threshold
echo 20 > /proc/hps/up_threshold
chmod 0755 /proc/hps/up_times
echo 2 > /proc/hps/up_times
chmod 0755 /proc/hps/rush_boost_enabled
chmod 0755 /proc/hps/input_boost_enabled
echo 1 > /proc/hps/rush_boost_enabled
echo 1 > /proc/hps/input_boost_enabled
chmod 0755 /proc/hps/suspend_enabled
chmod 0755 /sys/power/autosleep
chomd 0755 /sys/power/pm_freeze_timeout
echo 1 > /proc/hps/suspend_enabled
echo 1 > /sys/power/autosleep
echo 3000 > /sys/power/pm_freeze_timeout

#GPU频率优化
chmod 0755 /proc/gpufreq/gpufreq_debug
chmod 0755 /proc/gpufreq/gpufreq_limited_low_batt_volt_ignore
chmod 0755 /proc/gpufreq/gpufreq_limited_low_batt_volume_ignore
chmod 0755 /proc/gpufreq/gpufreq_limited_power
chmod 0755 /proc/gpufreq/gpufreq_limited_thermal_ignore
chmod 0755 /proc/gpufreq/gpufreq_volt_enable
chmod 0755 /proc/gpufreq/gpufreq_opp_max_freq
chmod 0755 /proc/gpufreq/gpufreq_opp_freq
chmod 0755 /proc/gpufreq/gpufreq_input_boost
chmod 0755 /d/ged/hal/fps_upper_bound
echo 1 > /proc/gpufreq/gpufreq_limited_low_batt_volt_ignore
echo 1 > /proc/gpufreq/gpufreq_limited_low_batt_volume_ignore
echo "-1 700000" > /proc/gpufreq/gpufreq_limited_power
echo 1 > /proc/gpufreq/gpufreq_limited_thermal_ignore
echo 1 > /proc/gpufreq/gpufreq_volt_enable
echo 700000 > /proc/gpufreq/gpufreq_opp_max_freq
echo 351000 > /proc/gpufreq/gpufreq_opp_freq
echo 0 > /proc/gpufreq/gpufreq_opp_freq
echo 1 > /proc/gpufreq/gpufreq_input_boost
echo 60 > /d/ged/hal/fps_upper_bound

#修改系统层ged
chmod 0755 /d/ged/hal/custom_boost_gpu_freq
chmod 0755 /d/ged/hal/custom_upbound_gpu_freq
chmod 0755 /proc/gpufreq/gpufreq_lpt_enable
chmod 0755 /sys/module/ged/parameters/gpu_debug_enable
chmod 0755 /sys/module/ged/parameters/boost_gpu_enable
chmod 0755 /sys/module/ged/parameters/ged_boost_enable
chmod 0755 /sys/module/ged/parameters/gpu_bottom_freq
chmod 0755 /sys/module/ged/parameters/gpu_cust_boost_freq
chmod 0755 /sys/module/ged/parameters/gpu_dvfs_enable
chmod 0755 /sys/module/ged/parameters/gpu_idle
echo 0 > /proc/gpufreq/gpufreq_lpt_enable
echo 0 > /d/ged/hal/custom_boost_gpu_freq
echo 6 > /d/ged/hal/custom_upbound_gpu_freq
echo 1 > /sys/module/ged/parameters/gpu_debug_enable
echo 1 > /sys/module/ged/parameters/boost_gpu_enable
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 351000 > /sys/module/ged/parameters/gpu_bottom_freq
echo 700000 > /sys/module/ged/parameters/gpu_cust_upbound_freq
echo 1 > /sys/module/ged/parameters/gpu_dvfs_enable
echo 1 > /sys/module/ged/parameters/gpu_idle

#开启ksm
busybox mkdir /sys/kernel/mm/ksm
busybox touch /sys/kernel/mm/ksm/run
echo 1 > /sys/kernel/mm/ksm/run
#开启zram
echo 1610612736 > /sys/block/zram0/disksize
busybox mkswap /dev/block/zram0
busybox swapon /dev/block/zram0
echo 0 > /proc/sys/vm/swappiness

#优化SD调度
chmod 0755 /sys/block/mmcblk0/queue/scheduler
chmod 0755 /sys/block/mmcblk0boot0/queue/scheduler
chmod 0755 /sys/block/mmcblk0boot1/queue/scheduler
chmod 0755 /sys/block/mmcblk0rpmb/queue/scheduler
chmod 0755 /sys/block/ram0/queue/scheduler
chmod 0755 /sys/block/zram0/queue/scheduler
echo "deadline" > /sys/block/mmcblk0/queue/scheduler
echo "deadline" > /sys/block/mmcblk0boot0/queue/scheduler
echo "deadline" > /sys/block/mmcblk0boot1/queue/scheduler
echo "deadline" > /sys/block/mmcblk0rpmb/queue/scheduler
echo "deadline" > /sys/block/ram0/queue/scheduler
echo "deadline" > /sys/block/zram0/queue/scheduler
chmod 0755 /sys/block/mmcblk0/queue/nr_requests
chmod 0755 /sys/block/mmcblk0boot0/queue/nr_requests
chmod 0755 /sys/block/mmcblk0boot1/queue/nr_requests
chmod 0755 /sys/block/mmcblk0/queue/read_ahead_kb
chmod 0755 /sys/block/mmcblk0boot0/queue/read_ahead_kb
chmod 0755 /sys/block/mmcblk0boot1/queue/read_ahead_kb
echo 1024 > /sys/block/mmcblk0/queue/nr_requests
echo 1024 > /sys/block/mmcblk0boot0/queue/nr_requests
echo 1024 > /sys/block/mmcblk0boot1/queue/nr_requests
echo 1024 > /sys/block/mmcblk0/queue/read_ahead_kb
echo 1024 > /sys/block/mmcblk0boot0/queue/read_ahead_kb
echo 1024 > /sys/block/mmcblk0boot1/queue/read_ahead_kb

#优化ZRAM和SWAP
chmod 0755 /proc/sys/vm/dirty_ratio
chmod 0755 /proc/sys/vm/dirty_background_ratio
chmod 0755 /proc/sys/vm/dirty_writeback_centisecs
chmod 0755 /proc/sys/vm/dirtytime_expire_seconds
chmod 0755 /proc/sys/vm/swappiness
chmod 0755 /proc/sys/vm/vfs_cache_pressure
chmod 0755 /proc/sys/vm/min_free_kbytes
chmod 0755 /extra_free_kbytes
echo 10 > /proc/sys/vm/dirty_ratio
echo 5 > /proc/sys/vm/dirty_background_ratio
echo 1500 > /proc/sys/vm/dirty_writeback_centisecs
echo 200 > /proc/sys/vm/dirtytime_expire_seconds
echo 100 > /proc/sys/vm/swappiness
echo 200 > /proc/sys/vm/vfs_cache_pressure
echo 10000 > /proc/sys/vm/min_free_kbytes
echo 30000 > /extra_free_kbytes

#POWERED BY 铁人司机
#完成日期：2019年4月14日 16:36