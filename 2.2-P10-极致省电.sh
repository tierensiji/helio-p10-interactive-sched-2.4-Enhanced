su
#作者：铁人司机
#完成日期：2019年4月10日22：14

#修改interactive参数
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/boost
echo 0 > /sys/devices/system/cpu/cpufreq/interactive/boost
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "98000 689000:108000 819000:128000 910000:148000 1001000" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo 819000 > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
echo 93 > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo 4000 > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/target_loads
echo "20 156000:30 338000:40 494000:50 598000:70 689000:85 819000:91 910000:99 30 286000:40 663000:50 871000:60 1027000:65 1196000:75 1495000:85 1651000:91 1807000:99" > /sys/devices/system/cpu/cpufreq/interactive/target_loads
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chmod 0666 /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo 100000 > /sys/devices/system/cpu/cpufreq/interactive/timer_slack
echo 100000 > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
chmod 0777 /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
echo 0 > /sys/devices/system/cpu/cpufreq/interactive/io_is_busy

#开启hotplug，修改动态变频参数
echo 1 > /proc/hps/enabled
chmod 0777 /proc/hps/num_base_perf_serv
echo "3 3" > /proc/hps/num_base_perf_serv
chmod 0777 /proc/hps/input_boost_cpu_num
chmod 0777 /proc/hps/big_task_enabled
echo 1 > /proc/hps/input_boost_cpu_num
echo 0 > /proc/hps/big_task_enabled
chmod 0666 /proc/hps/down_threshold
echo 60 > /proc/hps/down_threshold
chmod 0666 /proc/hps/down_times
echo 4 > /proc/hps/down_times
chmod 0666 /proc/hps/up_threshold
echo 80 > /proc/hps/up_threshold
chmod 0666 /proc/hps/up_times
echo 6 > /proc/hps/up_times
chmod 0666 /proc/hps/rush_boost_enabled
chmod 0666 /proc/hps/input_boost_enabled
echo 1 > /proc/hps/rush_boost_enabled
echo 0 > /proc/hps/input_boost_enabled
chmod 0666 /proc/hps/suspend_enabled
chmod 0666 /sys/power/autosleep
chomd 0666 /sys/power/pm_freeze_timeout
echo 1 > /proc/hps/suspend_enabled
echo 1 > /sys/power/autosleep
echo 2000 > /sys/power/pm_freeze_timeout

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
echo "3 0" > /proc/gpufreq/gpufreq_limited_low_batt_volt_ignore
echo "3 0" > /proc/gpufreq/gpufreq_limited_low_batt_volume_ignore
echo "3 429000" > /proc/gpufreq/gpufreq_limited_power
echo "3 0" > /proc/gpufreq/gpufreq_limited_thermal_ignore
echo 1 > /proc/gpufreq/gpufreq_volt_enable
echo 429000 > /proc/gpufreq/gpufreq_opp_max_freq
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
echo 0 > /sys/module/ged/parameters/boost_gpu_enable
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 351000 > /sys/module/ged/parameters/gpu_bottom_freq
echo 429000 > /sys/module/ged/parameters/gpu_cust_boost_freq
echo 1 > /sys/module/ged/parameters/gpu_dvfs_enable
echo 1 > /sys/module/ged/parameters/gpu_idle

#优化硬盘读写逻辑
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
echo 512 > /sys/block/sda/nr_requests

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