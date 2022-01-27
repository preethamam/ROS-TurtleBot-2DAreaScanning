#include "ros/ros.h"
#include "std_msgs/String.h"
#include "localize/slam_stamped.h"
#include <geometry_msgs/Pose.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <iostream>
#include <fstream>


int main(int argc, char **argv)
{

  ros::init(argc, argv, "PoseUpdate");

  static int seq_i = 0;
  ros::NodeHandle n;
  ros::Publisher slam_pub = n.advertise<localize::slam_stamped>("tf_msg", 100);
  tf::TransformListener listener;

  ros::Rate rate(3.0);

  localize::slam_stamped pose;

  std::ofstream myfile;
  myfile.open("/home/turtlebot/Desktop/OUTPUTXY.txt");

  while (n.ok())
  {
    tf::StampedTransform transform;
    try
    {
        //ROS_INFO("Attempting to read pose...");
        listener.lookupTransform("/map","/base_link",ros::Time(0), transform);
        

        pose.x = transform.getOrigin().x();
        pose.y = transform.getOrigin().y();
        pose.th = tf::getYaw(transform.getRotation());

        ROS_INFO("Got a transform! x = %f, y = %f, rotation_z = %f",transform.getOrigin().x(),transform.getOrigin().y(), tf::getYaw(transform.getRotation()));
        myfile << transform.getOrigin().x() << "," << transform.getOrigin().y() << ", " << tf::getYaw(transform.getRotation()) <<"\n";
    }
    catch (tf::TransformException ex)
    {
        ROS_ERROR("Nope! %s", ex.what());
    } 
    pose.header.seq = seq_i++;
    pose.header.stamp = ros::Time::now();
    pose.header.frame_id = "/tf_msg";

    slam_pub.publish(pose);
    rate.sleep();

  }
  myfile.close();
  ROS_ERROR("I DIED");
  return 0;
}
