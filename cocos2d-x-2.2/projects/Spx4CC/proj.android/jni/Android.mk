LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/spx4cc/CCAFCAnimation.cpp \
                   ../../Classes/spx4cc/CCAFCClip.cpp \
                   ../../Classes/spx4cc/CCAFCClipMapping.cpp \
                   ../../Classes/spx4cc/CCAFCFrame.cpp \
                   ../../Classes/spx4cc/CCAFCSprite.cpp \
                   ../../Classes/spx4cc/CCSPXManager.cpp \
                   ../../Classes/spx4cc/CCSPXSprite.cpp \
                   ../../Classes/spx4cc/CCSPXAction.cpp \
                   ../../Classes/spx4cc/CCSPXFileData.cpp \
                   ../../Classes/spx4cc/CCSPXFrame.cpp \
                   ../../Classes/spx4cc/CCSPXLoader.cpp \
                   ../../Classes/spx4cc/CCSPX3Manager.cpp \
                   ../../Classes/spx4cc/CCSPX3Sprite.cpp \
                   ../../Classes/spx4cc/CCSPX3Action.cpp \
                   ../../Classes/spx4cc/CCSPX3FileData.cpp \
                   ../../Classes/spx4cc/CCSPX3Frame.cpp \
                   ../../Classes/spx4cc/CCSPX3Loader.cpp \
                   ../../Classes/spx4cc/CCSPX3TileSet.cpp \
                   ../../Classes/spx4cc/CCUtils.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
					$(LOCAL_PATH)/../../Classes/spx4cc
					

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)

