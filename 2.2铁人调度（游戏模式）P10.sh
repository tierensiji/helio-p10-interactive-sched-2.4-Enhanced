su
#作者：铁人司机
#完成日期：2019年4月10日22：14

#修改interactive参数
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/boost
echo 1 > /sys/devices/system/cpu/cpufreq/interactive/boost
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "98000 689000:108000 819000:128000 910000:148000 1001000" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo 819000 > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
echo 85 > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo 8000 > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/target_loads
echo "10 156000:20 338000:30 494000:40 598000:60 689000:75 819000:85 910000:90 20 286000:30 663000:40 871000:50 1027000:55 1196000:65 1495000:75 1651000:85 1807000:90" > /sys/devices/system/cpu/cpufreq/interactive/target_loads
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo 60000 > /sys/devices/system/cpu/cpufreq/interactive/timer_slack
echo 60000 > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
echo 0 > /sys/devices/system/cpu/cpufreq/interactive/io_is_busy

#开启hotplug，修改动态变频参数
echo 1 > /proc/hps/enabled
chmod 0777 /proc/hps/num_base_perf_serv
echo "4 4" > /proc/hps/num_base_perf_serv
chmod 0777 /proc/hps/input_boost_cpu_num
chmod 0777 /proc/hps/big_task_enabled
echo 4 > /proc/hps/input_boost_cpu_num
echo 1 > /proc/hps/big_task_enabled
chmod 0666 /proc/hps/down_threshold
echo 80 > /proc/hps/down_threshold
chmod 0666 /proc/hps/down_times
echo 4 > /proc/hps/down_times
chmod 0666 /proc/hps/up_threshold
echo 40 > /proc/hps/up_threshold
chmod 0666 /proc/hps/up_times
echo 6 > /proc/hps/up_times
chmod 0666 /proc/hps/rush_boost_enabled
chmod 0666 /proc/hps/input_boost_enabled
echo 1 > /proc/hps/rush_boost_enabled
echo 1 > /proc/hps/input_boost_enabled
chmod 0666 /proc/hps/suspend_enabled
chmod 0666 /sys/power/autosleep
chomd 0666 /sys/power/pm_freeze_timeout
echo 1 > /proc/hps/suspend_enabled
echo 1 > /sys/power/autosleep
echo 3000 > /sys/power/pm_freeze_timeout

#分配核心
chmod 0777  /dev/cpuset/background/cpus
chmod 0777  /dev/cpuset/background/effective_cpus
chmod 0777  /dev/cpuset/background/cpus_exclusive
chmod 0777  /dev/cpuset/background/sched_load_balance

echo "0-1,4" > /dev/cpuset/background/cpus
echo "0-1,4" > /dev/cpuset/background/effective_cpus
echo 0 > /dev/cpuset/background/cpus_exclusive
echo 0 > /dev/cpuset/background/sched_load_balance

chmod 0777  /dev/cpuset/foreground/cpus
chmod 0777  /dev/cpuset/foreground/effective_cpus
chmod 0777  /dev/cpuset/foreground/cpus_exclusive
chmod 0777  /dev/cpuset/foreground/sched_load_balance

echo "2-3,5" > /dev/cpuset/foreground/cpus
echo "2-3,5" > /dev/cpuset/foreground/effective_cpus
echo 0 > /dev/cpuset/foreground/cpus_exclusive
echo 0 > /dev/cpuset/foreground/sched_load_balance

chmod 0777  /dev/cpuset/foreground/boost/cpus
chmod 0777  /dev/cpuset/foreground/boost/effective_cpus
chmod 0777  /dev/cpuset/foreground/boost/cpus_exclusive
chmod 0777  /dev/cpuset/foreground/boost/sched_load_balance

echo "6-7"> /dev/cpuset/foreground/boost/cpus
echo "6-7" > /dev/cpuset/foreground/boost/effective_cpus
echo 0 > /dev/cpuset/foreground/boost/cpus_exclusive
echo 0 > /dev/cpuset/foreground/boost/sched_load_balance

chmod 0777  /dev/cpuset/system-background/cpus
chmod 0777  /dev/cpuset/system-background/effective_cpus
chmod 0777  /dev/cpuset/system-background/cpus_exclusive
chmod 0777  /dev/cpuset/system-background/sched_load_balance

echo "0-1,2-3" > /dev/cpuset/system-background/cpus
echo "0-1,2-3" > /dev/cpuset/system-background/effective_cpus
echo 1 > /dev/cpuset/system-background/cpus_exclusive
echo 1 > /dev/cpuset/system-background/sched_load_balance

chmod 0777  /dev/cpuset/top-app/cpus
chmod 0777  /dev/cpuset/top-app/effective_cpus
chmod 0777  /dev/cpuset/top-app/cpus_exclusive
chmod 0777  /dev/cpuset/top-app/sched_load_balance

echo "4,5,6-7" > /dev/cpuset/top-app/cpus
echo "4,5,6-7" > /dev/cpuset/top-app/effective_cpus
echo 0 > /dev/cpuset/top-app/cpus_exclusive
echo 0 > /dev/cpuset/top-app/sched_load_balance

#GPU频率优化
chmod 0666 /proc/gpufreq/gpufreq_debug
chmod 0777 /proc/gpufreq/gpufreq_limited_low_batt_volt_ignore
chmod 0777 /proc/gpufreq/gpufreq_limited_low_batt_volume_ignore
chmod 0777 /proc/gpufreq/gpufreq_limited_power
chmod 0777 /proc/gpufreq/gpufreq_limited_thermal_ignore
chmod 0777 /proc/gpufreq/gpufreq_volt_enable
chmod 0777 /proc/gpufreq/gpufreq_opp_max_freq
chmod 0777 /proc/gpufreq/gpufreq_opp_freq
chmod 0777 /proc/gpufreq/gpufreq_input_boost
chmod 0777 /d/ged/hal/fps_upper_bound
echo "0 0" > /proc/gpufreq/gpufreq_limited_low_batt_volt_ignore
echo "0 0" > /proc/gpufreq/gpufreq_limited_low_batt_volume_ignore
echo "0 700000" > /proc/gpufreq/gpufreq_limited_power
echo "0 0" > /proc/gpufreq/gpufreq_limited_thermal_ignore
echo 1 > /proc/gpufreq/gpufreq_volt_enable
echo 700000 > /proc/gpufreq/gpufreq_opp_max_freq
echo 351000 > /proc/gpufreq/gpufreq_opp_freq
echo 0 > /proc/gpufreq/gpufreq_opp_freq
echo 1 > /proc/gpufreq/gpufreq_input_boost
echo 45 > /d/ged/hal/fps_upper_bound

#修改系统层ged
chmod 0777 /sys/module/ged/parameters/gpu_debug_enable
chmod 0777 /sys/module/ged/parameters/boost_gpu_enable
chmod 0777 /sys/module/ged/parameters/ged_boost_enable
chmod 0777 /sys/module/ged/parameters/gpu_bottom_freq
chmod 0777 /sys/module/ged/parameters/gpu_cust_boost_freq
chmod 0777 /sys/module/ged/parameters/gpu_dvfs_enable
chmod 0777 /sys/module/ged/parameters/gpu_idle
echo 1 > /sys/module/ged/parameters/gpu_debug_enable
echo 1 > /sys/module/ged/parameters/boost_gpu_enable
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 351000 > /sys/module/ged/parameters/gpu_bottom_freq
echo 700000 > /sys/module/ged/parameters/gpu_cust_upbound_freq
echo 1 > /sys/module/ged/parameters/gpu_dvfs_enable
echo 1 > /sys/module/ged/parameters/gpu_idle

#优化硬盘读写逻辑
#优化SD调度
chmod 0777 /sys/block/sda/queue/scheduler
chmod 0777 /sys/block/sdb/queue/scheduler
chmod 0777 /sys/block/sdc/queue/scheduler
chmod 0777 /sys/block/zram0/queue/scheduler
chmod 0777 /sys/block/ram0/queue/scheduler
echo "deadline" > /sys/block/sda/queue/scheduler
echo "deadline" > /sys/block/sdb/queue/scheduler
echo "deadline" > /sys/block/sdc/queue/scheduler
echo "deadline" > /sys/block/zram0/queue/scheduler
echo "deadline" > /sys/block/ram0/queue/scheduler
chmod 0777 /sys/block/sda/queue/nr_requests
chmod 0777 /sys/block/sdb/queue/nr_requests
chmod 0777 /sys/block/sdc/queue/nr_requests
chmod 0777 /sys/block/sda/queue/read_ahead_kb
chmod 0777 /sys/block/sdb/queue/read_ahead_kb
chmod 0777 /sys/block/sdc/queue/read_ahead_kb
echo 1024 > /sys/block/sda/queue/nr_requests
echo 1024 > /sys/block/sdb/queue/nr_requests
echo 1024 > /sys/block/sdc/queue/nr_requests
echo 1024 > /sys/block/sda/queue/read_ahead_kb
echo 1024 > /sys/block/sdb/queue/read_ahead_kb
echo 1024 > /sys/block/sdc/queue/read_ahead_kb
#优化ZRAM执行逻辑
chmod 0777 /proc/sys/vm/dirty_ratio
chmod 0777 /proc/sys/vm/dirty_background_ratio
chmod 0777 /proc/sys/vm/dirty_writeback_centisecs
chmod 0777 /proc/sys/vm/dirtytime_expire_seconds
chmod 0777 /proc/sys/vm/swappiness
chmod 0777 /proc/sys/vm/vfs_cache_pressure
echo 10 > /proc/sys/vm/dirty_ratio
echo 5 > /proc/sys/vm/dirty_background_ratio
echo 400 > /proc/sys/vm/dirty_writeback_centisecs
echo 1000 > /proc/sys/vm/dirtytime_expire_seconds
echo 0 > /proc/sys/vm/swappiness
echo 200 > /proc/sys/vm/vfs_cache_pressure

#开启ZRAM(魅蓝note3默认开启，不需要执行)
#echo 1610612736 > /sys/block/zram0/disksize
#/system/bin/mkswap /dev/block/zram0
#/system/bin/swapon /dev/block/zram0


#Powered By 铁人司机
#To be continued
#Update irregularly