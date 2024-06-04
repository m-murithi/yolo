#!/bin/bash

# Check Kubernetes Pods
echo "Checking Kubernetes Pods..."
kubectl get pods

# Check Kubernetes Services
echo "Checking Kubernetes Services..."
kubectl get services

# Describe Service to get detailed information
echo "Describing Service..."
kubectl describe svc yolo-service

# Check frontend pod logs
echo "Checking frontend pod logs..."
kubectl logs -l app=yolo -c frontend

# Check backend pod logs
echo "Checking backend pod logs..."
kubectl logs -l app=yolo -c backend
