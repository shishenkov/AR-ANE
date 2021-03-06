/* Copyright 2018 Tua Rua Ltd.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

 Additional Terms
 No part, or derivative of this Air Native Extensions's code is permitted
 to be sold as the basis of a commercially packaged Air Native Extension which
 undertakes the same purpose as this software. That is an ARKit wrapper for iOS.
 All Rights Reserved. Tua Rua Ltd.
 */

package com.tuarua.arane.lights {
import com.tuarua.ARANEContext;
import com.tuarua.arane.materials.MaterialProperty;
import com.tuarua.fre.ANEError;

[RemoteClass(alias="com.tuarua.arane.lights.Light")]
public class Light {
    private var _name:String;
    public var nodeName:String;
    private var _isDefault:Boolean = true;
    private var _type:String = LightType.omni;
    private var _color:uint = 0xFFFFFFFF;
    private var _temperature:Number = 6500;
    private var _intensity:Number = 1000;
    private var _castsShadow:Boolean = false;
    private var _shadowColor:uint = 0x80000000;
    private var _shadowRadius:Number = 3;
    private var _shadowMapSize:Array = [0, 0];
    private var _shadowSampleCount:int = 0;
    private var _shadowMode:int = ShadowMode.forward;
    private var _shadowBias:Number = 1;
    private var _automaticallyAdjustsShadowProjection:Boolean = true;
    private var _maximumShadowDistance:Number = 100;
    private var _forcesBackFaceCasters:Boolean = false;
    private var _sampleDistributedShadowMaps:Boolean = false;
    private var _shadowCascadeCount:int = 1;
    private var _shadowCascadeSplittingFactor:Number = 0.15;
    private var _orthographicScale:Number = 1;
    private var _zNear:Number = 1;
    private var _zFar:Number = 100;
    private var _attenuationStartDistance:Number = 0;
    private var _attenuationEndDistance:Number = 0;
    private var _attenuationFalloffExponent:Number = 2;
    private var _spotInnerAngle:Number = 0;
    private var _gobo:MaterialProperty;
    private var _iesProfileURL:String;
    private var _categoryBitMask:int = -1;
    private var _spotOuterAngle:Number = 45;

    //noinspection ReservedWordAsName
    public function Light(type:String = LightType.omni) {
        this._type = type;
        this._name = ARANEContext.context.call("createGUID") as String;
    }

    public function get type():String {
        return _type;
    }

    public function set type(value:String):void {
        if (value == _type) return;
        _type = value;
        setANEvalue("type", value);
    }

    public function get color():uint {
        return _color;
    }

    public function set color(value:uint):void {
        if (value == _color) return;
        _isDefault = false;
        _color = value;
        setANEvalue("color", value);
    }

    public function get temperature():Number {
        return _temperature;
    }

    public function set temperature(value:Number):void {
        if (value == _temperature) return;
        _isDefault = false;
        _temperature = value;
        setANEvalue("temperature", value);
    }

    public function get intensity():Number {
        return _intensity;
    }

    public function set intensity(value:Number):void {
        if (value == _intensity) return;
        _intensity = value;
        setANEvalue("intensity", value);
    }

    public function get castsShadow():Boolean {
        return _castsShadow;
    }

    public function set castsShadow(value:Boolean):void {
        if (value == _castsShadow) return;
        _isDefault = false;
        _castsShadow = value;
        setANEvalue("castsShadow", value);
    }

    public function get shadowRadius():Number {
        return _shadowRadius;
    }

    public function set shadowRadius(value:Number):void {
        if (value == _shadowRadius) return;
        _isDefault = false;
        _shadowRadius = value;
        setANEvalue("shadowRadius", value);
    }

    public function get shadowColor():uint {
        return _shadowColor;
    }

    public function set shadowColor(value:uint):void {
        if (value == _shadowColor) return;
        _isDefault = false;
        _shadowColor = value;
        setANEvalue("shadowColor", value);
    }

    public function get shadowMapSize():Array {
        return _shadowMapSize;
    }

    public function set shadowMapSize(value:Array):void {
        if (value == _shadowMapSize) return;
        _isDefault = false;
        _shadowMapSize = value;
        setANEvalue("shadowMapSize", value);
    }

    public function get shadowSampleCount():int {
        return _shadowSampleCount;
    }

    public function set shadowSampleCount(value:int):void {
        if (value == _shadowSampleCount) return;
        _isDefault = false;
        _shadowSampleCount = value;
        setANEvalue("shadowSampleCount", value);
    }

    public function get shadowMode():int {
        return _shadowMode;
    }

    public function set shadowMode(value:int):void {
        if (value == _shadowMode) return;
        _isDefault = false;
        _shadowMode = value;
        setANEvalue("shadowMode", value);
    }

    public function get shadowBias():Number {
        return _shadowBias;
    }

    public function set shadowBias(value:Number):void {
        if (value == _shadowBias) return;
        _isDefault = false;
        _shadowBias = value;
        setANEvalue("shadowBias", value);
    }

    public function get automaticallyAdjustsShadowProjection():Boolean {
        return _automaticallyAdjustsShadowProjection;
    }

    public function set automaticallyAdjustsShadowProjection(value:Boolean):void {
        if (value == _automaticallyAdjustsShadowProjection) return;
        _isDefault = false;
        _automaticallyAdjustsShadowProjection = value;
        setANEvalue("automaticallyAdjustsShadowProjection", value);
    }

    public function get maximumShadowDistance():Number {
        return _maximumShadowDistance;
    }

    public function set maximumShadowDistance(value:Number):void {
        if (value == _maximumShadowDistance) return;
        _isDefault = false;
        _maximumShadowDistance = value;
        setANEvalue("maximumShadowDistance", value);
    }

    public function get forcesBackFaceCasters():Boolean {
        return _forcesBackFaceCasters;
    }

    public function set forcesBackFaceCasters(value:Boolean):void {
        if (value == _forcesBackFaceCasters) return;
        _isDefault = false;
        _forcesBackFaceCasters = value;
        setANEvalue("forcesBackFaceCasters", value);
    }

    public function get sampleDistributedShadowMaps():Boolean {
        return _sampleDistributedShadowMaps;
    }

    public function set sampleDistributedShadowMaps(value:Boolean):void {
        if (value == _sampleDistributedShadowMaps) return;
        _isDefault = false;
        _sampleDistributedShadowMaps = value;
        setANEvalue("sampleDistributedShadowMaps", value);
    }

    public function get shadowCascadeCount():int {
        return _shadowCascadeCount;
    }

    public function set shadowCascadeCount(value:int):void {
        if (value == _shadowCascadeCount) return;
        _isDefault = false;
        _shadowCascadeCount = value;
        setANEvalue("shadowCascadeCount", value);
    }

    public function get shadowCascadeSplittingFactor():Number {
        return _shadowCascadeSplittingFactor;
    }

    public function set shadowCascadeSplittingFactor(value:Number):void {
        if (value == _shadowCascadeSplittingFactor) return;
        _isDefault = false;
        _shadowCascadeSplittingFactor = value;
        setANEvalue("shadowCascadeSplittingFactor", value);
    }

    public function get orthographicScale():Number {
        return _orthographicScale;
    }

    public function set orthographicScale(value:Number):void {
        if (value == _orthographicScale) return;
        _isDefault = false;
        _orthographicScale = value;
        setANEvalue("orthographicScale", value);
    }

    public function get zNear():Number {
        return _zNear;
    }

    public function set zNear(value:Number):void {
        if (value == _zNear) return;
        _isDefault = false;
        _zNear = value;
        setANEvalue("zNear", value);
    }

    public function get zFar():Number {
        return _zFar;
    }

    public function set zFar(value:Number):void {
        if (value == _zFar) return;
        _isDefault = false;
        _zFar = value;
        setANEvalue("zFar", value);
    }

    public function get attenuationStartDistance():Number {
        return _attenuationStartDistance;
    }

    public function set attenuationStartDistance(value:Number):void {
        if (value == _attenuationStartDistance) return;
        _isDefault = false;
        _attenuationStartDistance = value;
        setANEvalue("attenuationStartDistance", value);
    }

    public function get attenuationEndDistance():Number {
        return _attenuationEndDistance;
    }

    public function set attenuationEndDistance(value:Number):void {
        if (value == _attenuationEndDistance) return;
        _isDefault = false;
        _attenuationEndDistance = value;
        setANEvalue("attenuationEndDistance", value);
    }

    public function get attenuationFalloffExponent():Number {
        return _attenuationFalloffExponent;
    }

    public function set attenuationFalloffExponent(value:Number):void {
        if (value == _attenuationFalloffExponent) return;
        _isDefault = false;
        _attenuationFalloffExponent = value;
        setANEvalue("attenuationFalloffExponent", value);
    }

    public function get spotInnerAngle():Number {
        return _spotInnerAngle;
    }

    public function set spotInnerAngle(value:Number):void {
        if (value == _spotInnerAngle) return;
        _isDefault = false;
        _spotInnerAngle = value;
        setANEvalue("spotInnerAngle", value);
    }

    public function get gobo():MaterialProperty {
        return _gobo;
    }

    public function set gobo(value:MaterialProperty):void {
        if (value == _gobo) return;
        _isDefault = false;
        _gobo = value;
        setANEvalue("gobo", value);
    }

    public function get iesProfileURL():String {
        return _iesProfileURL;
    }

    public function set iesProfileURL(value:String):void {
        if (value == _iesProfileURL) return;
        _isDefault = false;
        _iesProfileURL = value;
        setANEvalue("iesProfileURL", value);
    }

    public function get categoryBitMask():int {
        return _categoryBitMask;
    }

    public function set categoryBitMask(value:int):void {
        if (value == _categoryBitMask) return;
        _isDefault = false;
        _categoryBitMask = value;
        setANEvalue("categoryBitMask", value);
    }

    public function get spotOuterAngle():Number {
        return _spotOuterAngle;
    }

    public function set spotOuterAngle(value:Number):void {
        if (value == _spotOuterAngle) return;
        _isDefault = false;
        _spotOuterAngle = value;
        setANEvalue("spotOuterAngle", value);
    }

    public function get name():String {
        return _name;
    }

    private function setANEvalue(name:String, value:*):void {
        if (nodeName) {
            var theRet:* = ARANEContext.context.call("setLightProp", nodeName, name, value);
            if (theRet is ANEError) throw theRet as ANEError;
        }
    }

    public function get isDefault():Boolean {
        return _isDefault;
    }
}
}
