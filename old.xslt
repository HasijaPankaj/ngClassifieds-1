

<!--Variable Declaration and Html Code Starts-->
<!-- ***************************************** ALL VARS USED TILL /html tag *********************************************-->
<xsl:variable name="InteractionWidth" select="'715'" />
<xsl:variable name="InteractionHeight" select="'500'" />
<xsl:variable name="picPath" select="'../Pics/'" />
<xsl:variable name="audioPath" select="'../Waves/'" />
<xsl:variable name="videoPath" select="'../Video/'" />
<!-- tanaji 20-6-2013 added for RtoL -->
<xsl:variable name="RtoLflag" select="/Interaction/@RtoLflag" />
<xsl:variable name="isPropertyBoxOpen" select="/Interaction/@isPropertyBoxOpen" />
<xsl:variable name="selectedElementID" select="/Interaction/@selectedElementID" />
<xsl:variable name="mediaType" select="/Interaction/node[@id='Media Type']" />
<xsl:variable name="ScenarioSoundFile" select="/Interaction/node[@id='Scenario Sound File']" />
<xsl:variable name="ImageForAudioONWidth" select="/Interaction/node[@id='Image for audio ONWidth']" />
<xsl:variable name="ImageForAudioONHeight" select="/Interaction/node[@id='Image for audio ONHeight']" />
<xsl:variable name="ImageForAudioOFFWidth" select="/Interaction/node[@id='Image for audio OFFWidth']" />
<xsl:variable name="ImageForAudioOFFHeight" select="/Interaction/node[@id='Image for audio OFFHeight ']" />

<xsl:variable name="topTitle" select="substring-before(substring-after($TitlePosition,'$'),'$')"></xsl:variable>
<xsl:variable name="leftTitle" select="substring-before($TitlePosition,'$')"></xsl:variable>
<xsl:variable name="widthTitle" select="substring-before(substring-after(substring-after($TitlePosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="heightTitle" select="substring-before(substring-after(substring-after(substring-after($TitlePosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="TitleFontFace" select="/Interaction/node[@id='Title FontFace']" />
<xsl:variable name="TitleFontSize" select="/Interaction/node[@id='Title FontSize']" />
<xsl:variable name="TitleFontBold" select="/Interaction/node[@id='Title FontBold']" />
<xsl:variable name="TitleFontItalic" select="/Interaction/node[@id='Title FontItalic']" />
<xsl:variable name="TitleColor" select="/Interaction/node[@id='Title Color']" />

<xsl:variable name="Instruction" select="/Interaction/node[@id='Instruction']" />
<xsl:variable name="topInstruction" select="substring-before(substring-after($InstructionPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="leftInstruction" select="substring-before($InstructionPosition,'$')"></xsl:variable>
<xsl:variable name="widthInstruction" select="substring-before(substring-after(substring-after($InstructionPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="heightInstruction" select="substring-before(substring-after(substring-after(substring-after($InstructionPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="InstructionFontFace" select="/Interaction/node[@id='Instruction FontFace']" />
<xsl:variable name="InstructionFontSize" select="/Interaction/node[@id='Instruction FontSize']" />
<xsl:variable name="InstructionFontBold" select="/Interaction/node[@id='Instruction FontBold']" />
<xsl:variable name="InstructionFontItalic" select="/Interaction/node[@id='Instruction FontItalic']" />
<xsl:variable name="InstructionColor1" select="/Interaction/node[@id='Instruction Color']" />
<xsl:variable name="InstructionColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select="$InstructionColor1" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>

<xsl:variable name="selectedOptionColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select="/Interaction/node[@id='Selected Option Background Color']"  />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="correctOptionColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select="/Interaction/node[@id='Correct Option Background Color']"  />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="optionColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select="/Interaction/node[@id='Options Background Color']"  />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="ShowIntroductionScreen" select="/Interaction/node[@id='Show Introduction Screen']" />
<xsl:variable name="showRestartBtn" select="/Interaction/node[@id='Show Restart Button']" />
<xsl:variable name="solveButtonPosition" select="/Interaction/node[@id='solveButtonPosition']" />
<xsl:variable name="topCheckAns" select="substring-before(substring-after($solveButtonPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="leftCheckAns" select="substring-before($solveButtonPosition,'$')"></xsl:variable>
<xsl:variable name="widthCheckAns" select="substring-before(substring-after(substring-after($solveButtonPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="heightCheckAns" select="substring-before(substring-after(substring-after(substring-after($solveButtonPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="SubmitButtonImage" select="/Interaction/node[@id='Submit Button']" />
<xsl:variable name="SubmitButtonImageWidth" select="/Interaction/node[@id='Submit ButtonWidth']" />
<xsl:variable name="SubmitButtonImageHeight" select="/Interaction/node[@id='Submit ButtonHeight']" />
<xsl:variable name="showGiveUp" select="/Interaction/node[@id='Show Give Up Button']" />
<xsl:variable name="giveUpBtnImg" select="/Interaction/node[@id='Give Up Button']" />
<xsl:variable name="giveUpImageWidth" select="/Interaction/node[@id='Give Up ButtonWidth']" />
<xsl:variable name="giveUpImageHeight" select="/Interaction/node[@id='Give Up ButtonHeight']" />
<xsl:variable name="LeaveImgPosition" select="/Interaction/node[@id='LeaveImgPosition']" />
<xsl:variable name="topGiveUp" select="substring-before(substring-after($LeaveImgPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="leftGiveUp" select="substring-before($LeaveImgPosition,'$')"></xsl:variable>
<xsl:variable name="widthGiveUp" select="substring-before(substring-after(substring-after($LeaveImgPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="heightGiveUp" select="substring-before(substring-after(substring-after(substring-after($LeaveImgPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="SubmitImgPosition" select="/Interaction/node[@id='LockImgPosition']" />
<xsl:variable name="topSubmit" select="substring-before(substring-after($SubmitImgPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="leftSubmit" select="substring-before($SubmitImgPosition,'$')"></xsl:variable>
<xsl:variable name="widthSubmit" select="substring-before(substring-after(substring-after($SubmitImgPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="heightSubmit" select="substring-before(substring-after(substring-after(substring-after($SubmitImgPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name ="topicFontName" select ="/Interaction/node[@id='Topic FontFace']"></xsl:variable>
<xsl:variable name ="topicFontSize" select ="/Interaction/node[@id='Topic FontSize']"></xsl:variable>
<xsl:variable name ="topicFontBold">
    <xsl:call-template name="IsBold">
        <xsl:with-param name="Bold" select ="/Interaction/node[@id='Topic FontBold']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="topicFontItalic">
    <xsl:call-template name="IsItalic">
        <xsl:with-param name="Italic" select ="/Interaction/node[@id='Topic FontItalic']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="topicFontColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Topic Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="totalWheelParts" select="/Interaction/node[@id='Number of Topics']" />
<xsl:variable name="versionId" select="/Interaction/@version" />
<!-- Compatibilty Mode-->
<xsl:text disable-output-escaping='yes'>  
    &lt;!--[if gte IE 10]&gt;
    &lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
    &lt;![endif]--&gt;
  </xsl:text>
<xsl:text disable-output-escaping='yes'>  
    &lt;!--[if IE 9]&gt;
    &lt;!DOCTYPE html &gt;
    &lt;![endif]--&gt;
  </xsl:text>
<!-- Compatibilty Mode-->
<html>
    <head>
        <!-- below line is added by Asha Bhatt on 09 Dec 2013 for task : View Port change -->
        <meta name="viewport" content="width={$viewTargetWidth}"/>
        <!--<link href="jquery-ui.css" rel="stylesheet" type="text/css"/>-->
        <script src="../HTML5/GlobalFunctions.js" type="text/javascript"></script>
        <link href="../HTML5/GlobalStyles.css" rel="stylesheet" type="text/css"/>
        <!-- <script src="../HTML5/jquery-1.4.2.js" type="text/javascript"></script>-->
        <!-- ********* FILES FOR DRAG DROP ***********-->
        <!-- ********* GENERAL FILES ***********-->
        <script src="../HTML5/jsScroller.js" type="text/javascript"></script>
        <link href="../HTML5/scroll.css" rel="stylesheet" type="text/css" />
        <script src="../HTML5/jquery.min.js" type="text/javascript"></script>
        <link href="../HTML5/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="../HTML5/jquery-ui.min.js"></script>
        <link href="../HTML5/Common.css" rel="stylesheet" type="text/css"/>
        <script src="../HTML5/Common.js"></script>
        <!--<script src="jquery-ui.min-1.8.js" type="text/javascript"></script>-->
        <script type="text/javascript">

          var showIntroScene='
            <xsl:value-of select="/Interaction/node[@id='Show Introduction Screen']"></xsl:value-of>';
      
      var dialog_flag = 
            <xsl:value-of select = "$isPropertyBoxOpen" ></xsl:value-of>;
      var selectedEltId = '
            <xsl:value-of select = "$selectedElementID" ></xsl:value-of>';
      
          var playIntroSound='
            <xsl:value-of select="/Interaction/node[@id='Play Introduction Sound']"></xsl:value-of>';
          var maxScore = '
            <xsl:value-of select="/Interaction/node[@id='Max Score']"></xsl:value-of>';

          var timerType = '
            <xsl:value-of select="/Interaction/node[@id='Start Timer']"></xsl:value-of>';

          var n=
            <xsl:value-of select="/Interaction/node[@id='Number of Topics']"></xsl:value-of>;
          var totalQuestions=
            <xsl:value-of select="/Interaction/node[@id='Number of Questions']"></xsl:value-of>;
          
            <xsl:variable name="CorrectAnswer1">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="/Interaction/node[@id='Correct Answer']" />
                    <xsl:with-param name="replace" select='"&apos;"' />
                    <xsl:with-param name="by" select='"\&apos;"' />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="CorrectAnswer2">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="$CorrectAnswer1" />
                    <xsl:with-param name="replace" select='"&#xA;"' />
                    <xsl:with-param name="by" select='"~"' />
                </xsl:call-template>
            </xsl:variable>
          var correcrAnsText = '
            <xsl:value-of select="$CorrectAnswer2"></xsl:value-of>';
          
            <xsl:variable name="yourAnswer1">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="/Interaction/node[@id='Your Answer']" />
                    <xsl:with-param name="replace" select='"&apos;"' />
                    <xsl:with-param name="by" select='"\&apos;"' />
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="yourAnswer2">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="$yourAnswer1" />
                    <xsl:with-param name="replace" select='"&#xA;"' />
                    <xsl:with-param name="by" select='"~"' />
                </xsl:call-template>
            </xsl:variable>
          var yourAnsText = '
            <xsl:value-of select="$yourAnswer2"></xsl:value-of>';
          var TargetViewSizeFactor = 
            <xsl:value-of select="$TargetViewSize_Factor"></xsl:value-of>;
          
            <xsl:choose>
                <xsl:when test="$versionId &gt;6.9">

              var gtbCount=
                    <xsl:value-of select="/Interaction/node[@id='Number of Nodes']"></xsl:value-of>;
              var maxScore=
                    <xsl:value-of select="/Interaction/node[@id='Max Score']"></xsl:value-of>;
              var alwaysDispInstr='
                    <xsl:value-of select="/Interaction/node[@id='Always display the Instruction']"></xsl:value-of>';
            
                </xsl:when>
                <xsl:otherwise>
              var gtbCount=0;
              var maxScore=
                    <xsl:value-of select="/Interaction/node[@id='Max Score']"></xsl:value-of>;
              var alwaysDispInstr='
                    <xsl:value-of select="'True'"></xsl:value-of>';
            
                </xsl:otherwise>
            </xsl:choose>
          var versionNo=
            <xsl:value-of select="$versionId"></xsl:value-of>;
          var selectedOptBgColor='
            <xsl:value-of select="$selectedOptionColor"></xsl:value-of>';
          var coorectOptBgColor='
            <xsl:value-of select="$correctOptionColor"></xsl:value-of>';
          var optionColor='
            <xsl:value-of select="$optionColor"></xsl:value-of>';




          var partsColor=new Array();
          var timeInt=new Array();
          var topic=new Array();
          var orgTopic=new Array();
          
            <xsl:call-template name="getWheelInfo">
                <xsl:with-param name="CurrentIndex" select="'1'" />
                <xsl:with-param name="LastIndex" select="$totalWheelParts" />
            </xsl:call-template>
            <xsl:choose>
                <xsl:when  test ="$AudioControlType='Upload Audio Image'">
              var OnImage = '
                    <xsl:value-of select="$OnImage"></xsl:value-of>';
              var OffImage = '
                    <xsl:value-of select="$OffImage"></xsl:value-of>';
            
                </xsl:when>
                <xsl:otherwise>
              var OnImage = 'sound_on.png';
              var OffImage = 'sound_of.png';
            </xsl:otherwise>
            </xsl:choose>
          var wavePath='
            <xsl:value-of select="$audioPath"></xsl:value-of>';
          var BackGroundType='
            <xsl:value-of select="$BackgroundType"></xsl:value-of>';
          
            <!-- tanaji-->
          var RtoLflag = '
            <xsl:value-of select="$RtoLflag"/>';
          
            <xsl:if test="$BackgroundType='Background Color'">
                <xsl:variable name="BgColor" select="/Interaction/node[@id='Background Color']" />
                <xsl:variable name="BackgroundColor">
                    <xsl:call-template name="ReplaceText">
                        <xsl:with-param name="text" select="$BgColor" />
                        <xsl:with-param name="replace" select="'0x'" />
                        <xsl:with-param name="by" select="'#'" />
                    </xsl:call-template>
                </xsl:variable>

            var BackgroundColor = '
                <xsl:value-of select="$BackgroundColor"></xsl:value-of>';
          
            </xsl:if>
            <xsl:call-template name ="CheckMuteOtherAudios"></xsl:call-template>
        </script>
        <!-- Global: including global files -->
        <script src="../HTML5/Wheel_of_Fortune_Spec.js" type="text/javascript"></script>
        <style>
            <xsl:variable name="RotateArrow" select="/Interaction/node[@id='RotateArrow']" />
            <xsl:variable name="rotateTop" select="substring-before(substring-after($RotateArrow,'$'),'$')"></xsl:variable>
            <xsl:variable name="rotateLeft" select="substring-before($RotateArrow,'$')"></xsl:variable>
            <xsl:variable name="rotateWidth" select="substring-before(substring-after(substring-after($RotateArrow,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="rotateHeight" select="substring-before(substring-after(substring-after(substring-after($RotateArrow,'$'),'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="rotateFactorX" select="'73.3'" />
            <xsl:variable name="rotateFactorY" select="'72.5'" />
          .topicStyle
          {
          font-family:
            <xsl:value-of select="$topicFontName"/>;
          
            <!--tanaji 12-6-13 appended px for IE9 support to font-size:-->
          font-size:
            <xsl:value-of select="$topicFontSize*$TargetViewSize_Factor"/>px;
          font-weight:
            <xsl:value-of select="$topicFontBold"/>;
          font-style:
            <xsl:value-of select="$topicFontItalic"/>;
          color:
            <xsl:value-of select="$topicFontColor"/>;
          }
          .base {
          width: 
            <xsl:value-of select="$rotateWidth"/>px;
          height: 
            <xsl:value-of select="$rotateHeight"/>px;

          left:
            <xsl:value-of select="$rotateLeft"/>px;
          top:
            <xsl:value-of select="$rotateTop"/>px;
          position:absolute;
          -moz-transform-origin: 
            <xsl:value-of select="$rotateFactorX*$TargetViewSize_Factor"/>px  
            <xsl:value-of select="$rotateFactorY*$TargetViewSize_Factor"/>px;     /* move the origin to top-left */
          -webkit-transform-origin:
            <xsl:value-of select="$rotateFactorX*$TargetViewSize_Factor"/>px  
            <xsl:value-of select="$rotateFactorY*$TargetViewSize_Factor"/>px;   /* move the origin to top-left */
          -o-transform-origin: 
            <xsl:value-of select="$rotateFactorX*$TargetViewSize_Factor"/>px  
            <xsl:value-of select="$rotateFactorY*$TargetViewSize_Factor"/>px;
          transform-origin:
            <xsl:value-of select="$rotateFactorX*$TargetViewSize_Factor"/>px  
            <xsl:value-of select="$rotateFactorY*$TargetViewSize_Factor"/>px;
          
            <!--tanaji 12-6-13 added statement for IE9 support-->
          -ms-transform-origin:
            <xsl:value-of select="$rotateFactorX*$TargetViewSize_Factor"/>px  
            <xsl:value-of select="$rotateFactorY*$TargetViewSize_Factor"/>px;
          }

          .rotate_translate {
          -moz-transform: rotate(0deg);
          -webkit-transform: rotate(0deg);
          -o-transform: rotate(0deg);
          transform: rotate(0deg);
          -ms-transform: rotate(0deg);
          }

        
        </style>
    </head>
    <body>
        <!--Global: add play watermark div for IOS and Audio Tag-->
        <div id="PlayWatermark" class="modal-background" style="z-Index:360;display:none;position:absolute;width:715px;top:0; height: 500px;left:0" onclick="OnPlayMarkClick();">
            <img src="../HTML5/PlayIOS.png" alt="" style="position:absolute;left:45%;top:45%;width:50px;50px;"/>
        </div>
        <audio id="AudioTag">
            <source src="" type="audio/mpeg" />
          Your browser does not support the audio tag.
        
        </audio>
        <div id="mainPanel"  sound="{concat($audioPath,$IntroductionSoundFile)}" style="position: absolute; top: 0px; left: 0px; overflow: hidden; width:{$viewTargetWidth}px; height:{$viewTargetHeight}px">
            <!-- tanaji -->
            <xsl:choose>
                <xsl:when test="$BackgroundType='Background Image' and $BackgroundImage!=''">
                    <xsl:call-template name="DisplayImage">
                        <xsl:with-param name="controlId" select="'interactionBackgroundImage'"></xsl:with-param>
                        <xsl:with-param name="path" select="$BackgroundImage"></xsl:with-param>
                        <xsl:with-param name="top" select="0"></xsl:with-param>
                        <xsl:with-param name="left" select="0"></xsl:with-param>
                        <xsl:with-param name="width" select="$InteractionWidth"></xsl:with-param>
                        <xsl:with-param name="height" select="$InteractionHeight"></xsl:with-param>
                        <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:if test ="not($BackgroundType)">
                        <xsl:if test="$BackgroundImage!=''">
                            <xsl:call-template name="DisplayImage">
                                <xsl:with-param name="controlId" select="'interactionBackgroundImage'"></xsl:with-param>
                                <xsl:with-param name="path" select="$BackgroundImage"></xsl:with-param>
                                <xsl:with-param name="top" select="0"></xsl:with-param>
                                <xsl:with-param name="left" select="0"></xsl:with-param>
                                <xsl:with-param name="width" select="$InteractionWidth"></xsl:with-param>
                                <xsl:with-param name="height" select="$InteractionHeight"></xsl:with-param>
                                <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:if>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="$SelectTitleType='Title Image'">
                    <xsl:call-template name="DisplayImage">
                        <xsl:with-param name="controlId" select="'interactionTitleImage'"></xsl:with-param>
                        <xsl:with-param name="path" select="$TitleImage"></xsl:with-param>
                        <xsl:with-param name="top" select="substring-before(substring-after($TitlePosition,'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="left" select="substring-before($TitlePosition,'$')"></xsl:with-param>
                        <xsl:with-param name="width" select="$TitleImageWidth"></xsl:with-param>
                        <xsl:with-param name="height" select="$TitleImageHeight"></xsl:with-param>
                        <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="DisplayText">
                        <xsl:with-param name="controlId" select="'interactionTitleText'"></xsl:with-param>
                        <xsl:with-param name="text" select="$TitleText"></xsl:with-param>
                        <xsl:with-param name="top" select="substring-before(substring-after($TitlePosition,'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="left" select="substring-before($TitlePosition,'$')"></xsl:with-param>
                        <xsl:with-param name="width" select="substring-before(substring-after(substring-after($TitlePosition,'$'),'$'),'$')"></xsl:with-param>
                        <!-- removing -2 because in property box height get changed with top-->
                        <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($TitlePosition,'$'),'$'),'$'),'$')"></xsl:with-param>
                        <!-- <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($TitlePosition,'$'),'$'),'$'),'$')-2"></xsl:with-param> -->
                        <xsl:with-param name="overflow" select="'hidden'"></xsl:with-param>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="string($ShowAudioControl) = 'True'">
                <xsl:call-template name="CreateAudioControl">
                    <xsl:with-param name="SoundPosition" select ="$SoundPosition"></xsl:with-param>
                    <xsl:with-param name="OnImage" select ="$OnImage"></xsl:with-param>
                    <xsl:with-param name="OffImage" select ="$OffImage"></xsl:with-param>
                    <xsl:with-param  name ="AudioControlType" select ="$AudioControlType"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$SelectInstructionType='Instruction Image'">
                    <xsl:call-template name="DisplayImage">
                        <xsl:with-param name="controlId" select="'interactionInstructionImage'"></xsl:with-param>
                        <xsl:with-param name="path" select="$InstructionImage"></xsl:with-param>
                        <xsl:with-param name="top" select="substring-before(substring-after($InstructionPosition,'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="left" select="substring-before($InstructionPosition,'$')"></xsl:with-param>
                        <xsl:with-param name="width" select="$InstructionImageWidth"></xsl:with-param>
                        <xsl:with-param name="height" select="$InstructionImageHeight"></xsl:with-param>
                        <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="DisplayText">
                        <xsl:with-param name="controlId" select="'interactionInstructionText'"></xsl:with-param>
                        <xsl:with-param name="text" select="$InstructionText"></xsl:with-param>
                        <xsl:with-param name="top" select="substring-before(substring-after($InstructionPosition,'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="left" select="substring-before($InstructionPosition,'$')"></xsl:with-param>
                        <xsl:with-param name="width" select="substring-before(substring-after(substring-after($InstructionPosition,'$'),'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($InstructionPosition,'$'),'$'),'$'),'$')"></xsl:with-param>
                        <xsl:with-param name="overflow" select="'hidden'"></xsl:with-param>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:call-template name="showWheel"></xsl:call-template>
            <!-- tanaji -->
            <xsl:variable name ="TrialImagePosition" select="/Interaction/node[@id='TrialImagePosition']" ></xsl:variable>
            <xsl:variable name="Trialtop" select="substring-before(substring-after($TrialImagePosition,'$'),'$')"></xsl:variable>
            <xsl:variable name="Trialleft" select="substring-before($TrialImagePosition,'$')"></xsl:variable>
            <xsl:variable name="Trialwidth" select="substring-before(substring-after(substring-after($TrialImagePosition,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="Trialheight" select="substring-before(substring-after(substring-after(substring-after($TrialImagePosition,'$'),'$'),'$'),'$')-2"></xsl:variable>
            <xsl:if test="$InteractionType='trial'">
                <div id="TrialImage" style="position:absolute;top:{$Trialtop}px;left:{$Trialleft}px;z-index:1000">
                    <a href="" target='_blank'>
                        <img id="IMG1" name="IMG1" src="../HTML5/Trial.jpg" style="height:{$Trialheight}px;width:{$Trialwidth}px" onmouseover="document.body.style.cursor='pointer';" border="none" onmouseout="document.body.style.cursor='default';"></img>
                    </a>
                </div>
            </xsl:if>
            <xsl:call-template name ="CreateMediaCollection"></xsl:call-template>
            <xsl:call-template name="showIntroduction"></xsl:call-template>
            <xsl:variable name="QBackgroundColor">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="/Interaction/node[@id='Question  Background Color']" />
                    <xsl:with-param name="replace" select="'0x'" />
                    <xsl:with-param name="by" select="'#'" />
                </xsl:call-template>
            </xsl:variable>
            <xsl:call-template name="showQuestionFeedbackPanel"></xsl:call-template>
            <div id="allTopics" style="display:none">
                <xsl:variable name="QuestionPanel" select="/Interaction/node[@id='QuestionPanel']" />
                <xsl:variable name="quePanelTop" select="substring-before(substring-after($QuestionPanel,'$'),'$')"></xsl:variable>
                <xsl:variable name="quePanelLeft" select="substring-before($QuestionPanel,'$')"></xsl:variable>
                <xsl:variable name="quePanelWidth" select="substring-before(substring-after(substring-after($QuestionPanel,'$'),'$'),'$')"></xsl:variable>
                <xsl:variable name="quePanelHeight" select="substring-before(substring-after(substring-after(substring-after($QuestionPanel,'$'),'$'),'$'),'$')"></xsl:variable>
                <div id="questionPanel" style="z-index:30;display:block;position:absolute;background-size:100% 100%;background-color:{$QBackgroundColor};background-image:url('../HTML5/Wheel-QBG.png');background-repeat:no-repeat;left:{$quePanelLeft}px;top:{$quePanelTop}px;width:{$quePanelWidth}px;height:{$quePanelHeight}px;position:absolute;overflow:hidden;box-shadow:0px 1px 9px 1px #000000;-webkit-box-shadow:0px 1px 9px 1px #000000; -moz-box-shadow:0px 1px 9px 1px #000000;border-radius:15px;">
                    <xsl:call-template name="showQuestionPanel"></xsl:call-template>
                </div>
                <div id="nonClickQuestionPanel" style="z-index:31;display:none;position:absolute;left:{$quePanelLeft}px;top:{$quePanelTop}px;width:{number($quePanelWidth)-20}px;height:{$quePanelHeight}px;position:absolute;overflow:hidden;"></div>
                <div id="stage1Btns" style="display:block;">
                    <xsl:if test="$showRestartBtn='True'">
                        <xsl:if test="$RestartButtonImage!=''">
                            <div id="restartButton" class=" dragThis resizeThis" style="position:absolute;top:{$rtop}px;left:{$rleft}px;width:{$rwidth}px;height:{$rheight}px;background-repeat:no-repeat;background-size:100% 100%;z-index:51;cursor:pointer;">
                                <img id="restart" src="../Pics/{$RestartButtonImage}" style="width:100%; height:100%"/>
                                <div id="nonClickRestart"  style=" background-size: 100% 100%; background-repeat: no-repeat;z-index:51;display:none;position:absolute;top:{$rtop}px;left:{$rleft}px;width:{$rwidth}px;height:{$rheight}px" /></div>
                        </xsl:if>
                    </xsl:if>
                    <xsl:if test="$SubmitButtonImage!=''">
                        <div id="submitButton" class="dragThis resizeThis" style="position:absolute;top:{$topSubmit}px;left:{$leftSubmit}px;width:{$widthSubmit}px;height:{$heightSubmit}px;background-repeat:no-repeat;background-size:100% 100%;cursor:pointer;z-index:46;">
                            <img id="submit" src="../Pics/{$SubmitButtonImage}" style="width:100%; height:100%"/>
                            <div id="nonClickSubmit"  style=" background-size: 100% 100%; background-repeat: no-repeat;display:block;position:absolute;top:{$topSubmit}px;left:{$leftSubmit}px;width:{$widthSubmit}px;height:{$heightSubmit}px;z-index:46;" /></div>
                    </xsl:if>
                    <xsl:if test="$showGiveUp='True'">
                        <xsl:if test="$giveUpBtnImg!=''">
                            <div id="giveupButton" class="dragThis resizeThis" style="position:absolute;top:{$topGiveUp}px;left:{$leftGiveUp}px;width:{$widthGiveUp}px;height:{$heightGiveUp}px;background-repeat:no-repeat;background-size:100% 100%;z-index:45;cursor:pointer;">
                                <img id="giveUp" src="../Pics/{$giveUpBtnImg}" style="width:100%; height:100%"/>
                                <div id="nonClickGiveUp"  style=" background-size: 100% 100%; background-repeat: no-repeat;z-index:46;display:none;position:absolute;top:{$topGiveUp}px;left:{$leftGiveUp}px;width:{$widthGiveUp}px;height:{$heightGiveUp}px" /></div>
                        </xsl:if>
                    </xsl:if>
                    <xsl:call-template name="displayScorePanel"></xsl:call-template>
                </div>
            </div>
            <xsl:call-template name="CreateFinalFeedback"></xsl:call-template>
            <!-- Title -->
            <!--<div id="TitleText" class="txtControl" style="overflow:hidden;white-space:nowrap;position:absolute;z-index:25;top:{$topTitle}px;left:{$leftTitle}px;width:{$widthTitle}px;height:{$heightTitle}px;"><xsl:value-of select="$TitleText" disable-output-escaping="yes" /></div>
            -->
            <!-- Closing Title -->
            <!--

            -->
            <!-- Instruction text -->
            <!--
            <div id="InstructionText" class="txtControl"  style="display:none;overflow:hidden;word-wrap: break-word;position:absolute;z-index:25;top:{$topInstruction}px;left:{$leftInstruction}px;width:{$widthInstruction}px;height:{$heightInstruction}px;"><xsl:value-of select="$Instruction" disable-output-escaping="yes" /></div>-->
            <!-- Closing Instruction text -->
        </div>
        <div id="dialog-form" title="Properties">
            <form class="form-wrapper">
                <div class="fieldrow">
                    <label>Top:</label>
                    <input id="top" type="number" name="" value="" class="text ui-widget-content ui-corner-all" placeholder=""/>
                </div>
                <div class="fieldrow">
                    <label>Width: </label>
                    <input id="width" type="text" name="" value="" class="text ui-widget-content ui-corner-all" placeholder=""/>
                </div>
                <div class="fieldrow">
                    <label>Left: </label>
                    <input id="left" type="text" name="" value="" class="text ui-widget-content ui-corner-all" placeholder=""/>
                </div>
                <div class="fieldrow">
                    <label>Height: </label>
                    <input id="height" type="text" name="" value="" class="text ui-widget-content ui-corner-all" placeholder=""/>
                </div>
            </form>
            <div class="pro-msg">
                <input id=" show_button" type="checkbox" name="" value="" class="checkbox"/>
                <label>Do not show this again</label>
            </div>
        </div>
    </body>
</html>
<!--Variable Declaration and Html Code Ends-->
<!-- Split here -->
<!-- XSLT Code Starts here -->
<!-- ******************************* ALL EXTRA VARS *************************************************-->
<xsl:variable name="viewTargetHeight" select="/Interaction/@height" />
<xsl:variable name="viewTargetWidth" select="/Interaction/@width" />
<xsl:variable name ="TargetViewSize_Factor">
    <xsl:value-of select ="1+((number($viewTargetHeight) - 500) div 500)" disable-output-escaping ="yes"/>
</xsl:variable>
<xsl:variable name="scroll" select="/Interaction/node[@id='ScrollPosition']" />
<xsl:variable name="scrollWidth" select="substring-before(substring-after(substring-after($scroll,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="scrollHeight" select="substring-before(substring-after(substring-after(substring-after($scroll,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="SoundPosition" select="/Interaction/node[@id='SndPosition']" />
<xsl:variable name="audioPath" select="'../Waves/'" />
<xsl:variable name="RtoLflag" select="/Interaction/@RtoLflag" />
<!-- THAIS IS BUTTON PANEL POSITION -->
<!--Start Button positions-->
<xsl:variable name="mediaType" select="/Interaction/node[@id='Media Type']" />
<xsl:variable name="startBtnImg" select="/Interaction/node[@id='Start Button']" />
<xsl:variable name="startBtnImgWidth" select="/Interaction/node[@id='Start ButtonWidth']" />
<xsl:variable name="startBtnImgHeight" select="/Interaction/node[@id='Start ButtonHeight']" />
<xsl:variable name="IntroductionImage" select="/Interaction/node[@id='Introduction Image']" />
<xsl:variable name ="introBgColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Introduction Background Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="IntroductionText" select="/Interaction/node[@id='Introduction Text']" />
<xsl:variable name="IntroductionSoundFile" select="/Interaction/node[@id='Introduction Sound File']" />
<xsl:variable name="PlayIntroductionSound" select="/Interaction/node[@id='Play Introduction Sound']" />
<xsl:variable name="RestartImgPosition" select="/Interaction/node[@id='RestartImgPosition']" />
<xsl:variable name="RestartButtonImage" select="/Interaction/node[@id='Restart Button']" />
<xsl:variable name="RestartButtonImageWidth" select="/Interaction/node[@id='Restart Button ImageWidth']" />
<xsl:variable name="RestartButtonImageHeight" select="/Interaction/node[@id='Restart Button ImageHeight']" />
<xsl:variable name="rtop" select="substring-before(substring-after($RestartImgPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="rleft" select="substring-before($RestartImgPosition,'$')"></xsl:variable>
<xsl:variable name="rwidth" select="substring-before(substring-after(substring-after($RestartImgPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="rheight" select="substring-before(substring-after(substring-after(substring-after($RestartImgPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="ScoreOutPanelPosition" select="/Interaction/node[@id='ScorePanelPosition']" />
<xsl:variable name="ScorePnltop" select="substring-before(substring-after($ScoreOutPanelPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="ScorePnlleft" select="substring-before($ScoreOutPanelPosition,'$')"></xsl:variable>
<xsl:variable name="ScorePnlwidth" select="substring-before(substring-after(substring-after($ScoreOutPanelPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="ScorePnlheight" select="substring-before(substring-after(substring-after(substring-after($ScoreOutPanelPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="QuestionPosition" select="/Interaction/node[@id='QuestionPosition']" />
<xsl:variable name="queTop" select="substring-before(substring-after($QuestionPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="queLeft" select="substring-before($QuestionPosition,'$')"></xsl:variable>
<xsl:variable name="queWidth" select="'280'"></xsl:variable>
<xsl:variable name="queHeight" select="'252'"></xsl:variable>
<xsl:variable name="OptionPosition" select="/Interaction/node[@id='Option1Position']" />
<xsl:variable name="optionTop" select="substring-before(substring-after($OptionPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="optionLeft" select="substring-before($OptionPosition,'$')"></xsl:variable>
<xsl:variable name="optionWidth" select="substring-before(substring-after(substring-after($OptionPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="optionHeight" select="substring-before(substring-after(substring-after(substring-after($OptionPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="topicInstructionPosition" select="/Interaction/node[@id='TopicInstructionPosition']" />
<xsl:variable name="topicInstrTop" select="substring-before(substring-after($topicInstructionPosition,'$'),'$')"></xsl:variable>
<xsl:variable name="topicInstrLeft" select="substring-before($topicInstructionPosition,'$')"></xsl:variable>
<xsl:variable name="topicInstrWidth" select="substring-before(substring-after(substring-after($topicInstructionPosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="topicInstrHeight" select="substring-before(substring-after(substring-after(substring-after($topicInstructionPosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="insideTopicTitlePosition" select="/Interaction/node[@id='TopicTitlePosition']" />
<xsl:variable name="topicTitleTop" select="substring-before(substring-after($insideTopicTitlePosition,'$'),'$')"></xsl:variable>
<xsl:variable name="topicTitleLeft" select="substring-before($insideTopicTitlePosition,'$')"></xsl:variable>
<xsl:variable name="topicTitleWidth" select="substring-before(substring-after(substring-after($insideTopicTitlePosition,'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="topicTitleHeight" select="substring-before(substring-after(substring-after(substring-after($insideTopicTitlePosition,'$'),'$'),'$'),'$')"></xsl:variable>
<xsl:variable name="CheckAnsButtonImage" select="/Interaction/node[@id='Check Answer Button']" />
<xsl:variable name="ChkAnsButtonImageWidth" select="/Interaction/node[@id='Check Answer ButtonWidth']" />
<xsl:variable name="ChkAnsButtonImageHeight" select="/Interaction/node[@id='Check Answer ButtonHeight']" />
<xsl:variable name="showRestartBtn" select="/Interaction/node[@id='Show Restart Button']" />
<xsl:variable name="showLeaveGameBtn" select="/Interaction/node[@id='Show Leave Game Button']" />
<xsl:variable name="showChkAnsBtn" select="/Interaction/node[@id='Show Check Answer Button']" />
<xsl:variable name="versionId" select="/Interaction/@version" />
<xsl:variable name ="fontName" select ="/Interaction/node[@id='Score FontFace']"></xsl:variable>
<xsl:variable name ="fontSize" select ="/Interaction/node[@id='Score FontSize']"></xsl:variable>
<xsl:variable name ="fontBold">
    <xsl:call-template name="IsBold">
        <xsl:with-param name="Bold" select ="/Interaction/node[@id='Score FontBold']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="fontItalic">
    <xsl:call-template name="IsItalic">
        <xsl:with-param name="Italic" select ="/Interaction/node[@id='Score FontItalic']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="fontColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Score Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="scoreHeadingColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Score Header Background']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="scoreBGColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Score Background Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="optFontName" select ="/Interaction/node[@id='Option FontFace']"></xsl:variable>
<xsl:variable name ="optFontSize" select ="/Interaction/node[@id='Option FontSize']"></xsl:variable>
<xsl:variable name ="optFontBold">
    <xsl:call-template name="IsBold">
        <xsl:with-param name="Bold" select ="/Interaction/node[@id='Option FontBold']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="optFontItalic">
    <xsl:call-template name="IsItalic">
        <xsl:with-param name="Italic" select ="/Interaction/node[@id='Option FontItalic']" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="optFontColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Option Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="optBgColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Options Background Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name ="fdbkBgColor">
    <xsl:call-template name="ReplaceText">
        <xsl:with-param name="text" select ="/Interaction/node[@id='Feedback  Background Color']" />
        <xsl:with-param name="replace" select="'0x'" />
        <xsl:with-param name="by" select="'#'" />
    </xsl:call-template>
</xsl:variable>
<xsl:variable name="ShowToggleDropdownBox" select="/Interaction/node[@id='Show Toggle Dropdown Box']"/>
<!-- ******************************* ALL EXTRA VARS *************************************************-->
<xsl:variable name="AudioControlType" select="/Interaction/node[@id='Audio Control Image Type']" />
<xsl:variable name="ImageScaling" select="/Interaction/node[@id='Image Scaling']" />
<xsl:variable name="totalWheelParts" select="/Interaction/node[@id='Number of Topics']" />
<xsl:variable name="wheelImg">
    <xsl:if test="$totalWheelParts='3'">
        <xsl:value-of select="'../HTML5/Wheel-3parts.png'"/>
    </xsl:if>
    <xsl:if test="$totalWheelParts='4'">
        <xsl:value-of select="'../HTML5/Wheel-4parts.png'"/>
    </xsl:if>
    <xsl:if test="$totalWheelParts='5'">
        <xsl:value-of select="'../HTML5/Wheel-5parts.png'"/>
    </xsl:if>
    <xsl:if test="$totalWheelParts='6'">
        <xsl:value-of select="'../HTML5/Wheel-6parts.png'"/>
    </xsl:if>
    <xsl:if test="$totalWheelParts='7'">
        <xsl:value-of select="'../HTML5/Wheel-7parts.png'"/>
    </xsl:if>
    <xsl:if test="$totalWheelParts='8'">
        <xsl:value-of select="'../HTML5/Wheel-8parts.png'"/>
    </xsl:if>
</xsl:variable>
<!-- ************************************************************************************************************************************** -->
<!-- XSLT Code Ends here -->
<!-- Split here -->
<!-- Global Functions starts -->
<xsl:template name="IsBold">
    <xsl:param name="Bold" />
    <xsl:choose>
        <!--<xsl:when test="contains($Bold, 'Bold')">-->
        <xsl:when test="contains($Bold, 'True')">
            <xsl:value-of select="'bold'"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="'normal'"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="IsItalic">
    <xsl:param name="Italic" />
    <xsl:choose>
        <!--<xsl:when test="contains($Italic, 'Italic')">-->
        <xsl:when test="contains($Italic, 'True')">
            <xsl:value-of select="'italic'"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="'normal'"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="ImageScale">
    <xsl:param name="Target_Width" />
    <xsl:param name="Target_Height" />
    <xsl:param name="ImgWidth" />
    <xsl:param name="ImgHeight" />
    <xsl:choose>
        <xsl:when test="$ImgHeight &gt; $Target_Height or $ImgWidth &gt; $Target_Width">
            <xsl:choose>
                <xsl:when test="$ImgHeight &gt; $Target_Height">
                    <xsl:variable name ="ratio" select ="number($Target_Height div $ImgHeight)"></xsl:variable>
                    <xsl:choose>
                        <xsl:when test="number($ImgWidth*$ratio)&lt; $Target_Width">
                            <xsl:value-of select ="concat(concat(concat(concat(number($ImgWidth*$ratio),'$'),number($ImgHeight*$ratio)),'$'),'1')"></xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable name ="newratio" select ="number($Target_Width div $ImgWidth)"></xsl:variable>
                            <xsl:value-of select ="concat(concat(concat(concat(number($ImgWidth*$newratio),'$'),number($ImgHeight*$newratio)),'$'),'2')"></xsl:value-of>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name ="ratio" select ="number($Target_Width div $ImgWidth)"></xsl:variable>
                    <xsl:value-of select ="concat(concat(concat(concat(number($ImgWidth*$ratio),'$'),number($ImgHeight*$ratio)),'$'),'2')"></xsl:value-of>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select ="concat(concat(concat($ImgWidth,'$'),$ImgHeight),'$')"></xsl:value-of>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="showIntroduction">
    <xsl:variable name="IntroductionScreen" select="/Interaction/node[@id='IntroductionScreen']" />
    <xsl:variable name="introTop" select="substring-before(substring-after($IntroductionScreen,'$'),'$')"></xsl:variable>
    <xsl:variable name="introLeft" select="substring-before($IntroductionScreen,'$')"></xsl:variable>
    <xsl:variable name="introWidth" select="substring-before(substring-after(substring-after($IntroductionScreen,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="introHeight" select="substring-before(substring-after(substring-after(substring-after($IntroductionScreen,'$'),'$'),'$'),'$')"></xsl:variable>
    <div id="introScreen" style="display:block;position:absolute;z-index:20;background-repeat:no-repeat;background-size:100% 100%;background-repeat:no-repeat;top:{$introTop}px;left:{$introLeft}px;width:{$introWidth}px;height:{$introHeight}px;">
        <div id="txtDiv" style="display:block;position:absolute;background-color:{$introBgColor};background-image:url('../HTML5/Wheel-intro-bg.png');background-size: 100% 100%;background-repeat:no-repeat;left:0px;top:0px;width:{$introWidth}px;height:{$introHeight}px;position:absolute;overflow:hidden;box-shadow:-1px 2px 6px 1px #000000;-webkit-box-shadow:-1px 2px 6px 1px #000000; -moz-box-shadow:-1px 2px 6px 1px #000000;border-radius: 15px 15px 15px 15px;">
            <xsl:variable name="IntroductionTextContainer" select="/Interaction/node[@id='IntroductionTextContainer']" />
            <xsl:variable name="introContTop" select="substring-before(substring-after($IntroductionTextContainer,'$'),'$')"></xsl:variable>
            <xsl:variable name="introContLeft" select="substring-before($IntroductionTextContainer,'$')"></xsl:variable>
            <xsl:variable name="introContWidth" select="substring-before(substring-after(substring-after($IntroductionTextContainer,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="introContHeight" select="substring-before(substring-after(substring-after(substring-after($IntroductionTextContainer,'$'),'$'),'$'),'$')"></xsl:variable>
            <div class="txtControl" id="IntroTxtContainer" style="display:block;position:absolute;background-repeat:no-repeat;top:{$introContTop}px;left:{$introContLeft}px;width:{$introContWidth}px;height:{$introContHeight}px;position:absolute;overflow:hidden;">
                <!--padding-left:5px;padding-top:10px;padding-bottom:20px;padding-right:20px-->
                <div id="IntroScrollContainer" class="Scroller-Container">
                    <xsl:variable name="introductionText" select="/Interaction/node[@id='introductionText']" />
                    <xsl:variable name="introTxtTop" select="substring-before(substring-after($introductionText,'$'),'$')"></xsl:variable>
                    <xsl:variable name="introTxtLeft" select="substring-before($introductionText,'$')"></xsl:variable>
                    <xsl:variable name="introTxtWidth" select="substring-before(substring-after(substring-after($introductionText,'$'),'$'),'$')"></xsl:variable>
                    <xsl:variable name="introTxtHeight" select="substring-before(substring-after(substring-after(substring-after($introductionText,'$'),'$'),'$'),'$')"></xsl:variable>
                    <xsl:if test="$PlayIntroductionSound='True'">
                        <div  id="introTxt" sound="{concat($audioPath,$IntroductionSoundFile)}" class="txtControl" style="display:block;position:absolute;left:0px;top:0px;width:{$introTxtWidth}px;">
                            <xsl:value-of select="$IntroductionText" disable-output-escaping="yes" />
                        </div>
                    </xsl:if>
                    <xsl:if test="$PlayIntroductionSound='False'">
                        <div  id="introTxt"  class="txtControl" style="display:block;position:absolute;left:0px;top:0px;width:350px;">
                            <xsl:value-of select="$IntroductionText" disable-output-escaping="yes" />
                        </div>
                    </xsl:if>
                </div>
                <!--tanaji 12-6-13 added border:none for arrowUp1 arrowDown1-->
                <a href="#" id="ImgArrowUp" onmouseover="scrollerPaneIntroText.startScroll(0, 5);" onmouseout="scrollerPaneIntroText.stopScroll();" style="z-Index:30;position:absolute;left:{number($introContWidth)-20*$TargetViewSize_Factor}px;  top:0px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                    <img id="arrowTop1" src="../HTML5/arrow_top.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
                </a>
                <a href="#" id="ImgArrowDown" onmouseover="scrollerPaneIntroText.startScroll(0, -5);" onmouseout="scrollerPaneIntroText.stopScroll();" style="z-Index:30;position:absolute;left:{number($introContWidth)-20*$TargetViewSize_Factor}px; top:{number($introContHeight)-20*$TargetViewSize_Factor}px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                    <img id="arrowDown1" src="../HTML5/arrow_down.png" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
                </a>
            </div>
            <xsl:if test="$startBtnImg!=''">
                <xsl:variable name="ImageWidth" select="/Interaction/node[@id='Start ButtonWidth']" />
                <xsl:variable name="ImageHeight" select="/Interaction/node[@id='Start ButtonHeight']" />
                <xsl:variable name="TargetWidth" select="'70'" />
                <xsl:variable name="TargetHeight" select="'30'"/>
                <xsl:variable name="widthHeight">
                    <xsl:call-template name="ImageScale">
                        <xsl:with-param name="Target_Width" select="$TargetWidth"></xsl:with-param>
                        <xsl:with-param name="Target_Height" select="$TargetHeight"></xsl:with-param>
                        <xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param>
                        <xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param>
                    </xsl:call-template>
                </xsl:variable>
                <xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" />
                <xsl:variable name="ImgHeight">
                    <xsl:choose>
                        <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                            <xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$TargetHeight"></xsl:value-of>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="ImgWidth">
                    <xsl:choose>
                        <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                            <xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$TargetWidth"></xsl:value-of>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="ImageSetting">
                    <xsl:choose>
                        <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                            <xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                        </xsl:when>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="IntroductionStartButton" select="/Interaction/node[@id='IntroductionStartButton']" />
                <xsl:variable name="startTop" select="substring-before(substring-after($IntroductionStartButton,'$'),'$')"></xsl:variable>
                <xsl:variable name="startLeft" select="substring-before($IntroductionStartButton,'$')"></xsl:variable>
                <xsl:variable name="startWidth" select="substring-before(substring-after(substring-after($IntroductionStartButton,'$'),'$'),'$')"></xsl:variable>
                <xsl:variable name="startHeight" select="substring-before(substring-after(substring-after(substring-after($IntroductionStartButton,'$'),'$'),'$'),'$')"></xsl:variable>
                <img id="start" class="MAR"  src="../Pics/{$startBtnImg}" imageSetting="{$ImageSetting}${$TargetWidth*$TargetViewSize_Factor}${$TargetHeight*$TargetViewSize_Factor}" style="z-index:30;cursor:pointer;display:block;position:absolute;top:{$startTop}px;left:{$startLeft}px;width:{$ImgWidth*$TargetViewSize_Factor}px;height:{$ImgHeight*$TargetViewSize_Factor}px" onclick="onClickStartFun();"/>
            </xsl:if>
        </div>
        <xsl:variable name="ImageWidth" select="/Interaction/node[@id='Introduction ImageWidth']" />
        <xsl:variable name="ImageHeight" select="/Interaction/node[@id='Introduction ImageHeight']" />
        <xsl:variable name="TargetWidth" select="'280'" />
        <xsl:variable name="TargetHeight" select="'210'"/>
        <xsl:variable name="widthHeight">
            <xsl:call-template name="ImageScale">
                <xsl:with-param name="Target_Width" select="$TargetWidth"></xsl:with-param>
                <xsl:with-param name="Target_Height" select="$TargetHeight"></xsl:with-param>
                <xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param>
                <xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" />
        <xsl:variable name="ImgHeight">
            <xsl:choose>
                <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                    <xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$TargetHeight"></xsl:value-of>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="ImgWidth">
            <xsl:choose>
                <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                    <xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$TargetWidth"></xsl:value-of>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="ImageSetting">
            <xsl:choose>
                <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                    <xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$IntroductionImage!=''">
                <xsl:variable name="IntroductionScreenImage" select="/Interaction/node[@id='IntroductionScreenImage']" />
                <xsl:variable name="introImgTop" select="substring-before(substring-after($IntroductionScreenImage,'$'),'$')"></xsl:variable>
                <xsl:variable name="introImgLeft" select="substring-before($IntroductionScreenImage,'$')"></xsl:variable>
                <xsl:variable name="introImgWidth" select="substring-before(substring-after(substring-after($IntroductionScreenImage,'$'),'$'),'$')"></xsl:variable>
                <xsl:variable name="introImgHeight" select="substring-before(substring-after(substring-after(substring-after($IntroductionScreenImage,'$'),'$'),'$'),'$')"></xsl:variable>
                <div  class="MAR" imageSetting="{$ImageSetting}${$TargetWidth*$TargetViewSize_Factor}${$TargetHeight*$TargetViewSize_Factor}" style=" background-size: 100% 100%;position:absolute;z-index:50;background-image:url({$IntroductionImage});background-repeat:no-repeat; top:{$introImgTop}px;left:{$introImgLeft}px;width:{$ImgWidth*$TargetViewSize_Factor}px;height:{$ImgHeight*$TargetViewSize_Factor}px"></div>
            </xsl:when>
        </xsl:choose>
    </div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="showWheel">
    <xsl:variable name="WheelPosition" select="/Interaction/node[@id='WheelPosition']" />
    <xsl:variable name="wheelTop" select="substring-before(substring-after($WheelPosition,'$'),'$')"></xsl:variable>
    <xsl:variable name="wheelLeft" select="substring-before($WheelPosition,'$')"></xsl:variable>
    <xsl:variable name="wheelWidth" select="substring-before(substring-after(substring-after($WheelPosition,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="wheelHeight" select="substring-before(substring-after(substring-after(substring-after($WheelPosition,'$'),'$'),'$'),'$')"></xsl:variable>
    <div id="wheelDiv" style="z-index:30;display:none;left:{$wheelLeft}px;top:{$wheelTop}px;position:absolute;">
        <xsl:variable name="CanvasGrid" select="/Interaction/node[@id='CanvasGrid']" />
        <xsl:variable name="canvasTop" select="substring-before(substring-after($CanvasGrid,'$'),'$')"></xsl:variable>
        <xsl:variable name="canvasLeft" select="substring-before($CanvasGrid,'$')"></xsl:variable>
        <xsl:variable name="canvasWidth" select="substring-before(substring-after(substring-after($CanvasGrid,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="canvasHeight" select="substring-before(substring-after(substring-after(substring-after($CanvasGrid,'$'),'$'),'$'),'$')"></xsl:variable>
        <canvas width="{$canvasWidth}" height="{$canvasHeight}" id="grid" style="position:absolute;left:0px;top:0px;z-index:30;"></canvas>
        <xsl:variable name="WheelImage" select="/Interaction/node[@id='WheelImage']" />
        <xsl:variable name="wheelImgTop" select="substring-before(substring-after($WheelImage,'$'),'$')"></xsl:variable>
        <xsl:variable name="wheelImgLeft" select="substring-before($WheelImage,'$')"></xsl:variable>
        <xsl:variable name="wheelImgWidth" select="substring-before(substring-after(substring-after($WheelImage,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="wheelImgHeight" select="substring-before(substring-after(substring-after(substring-after($WheelImage,'$'),'$'),'$'),'$')"></xsl:variable>
        <div style="position:absolute;left:{$wheelImgLeft}px;top:{$wheelImgTop}px;background-image:url({$wheelImg});background-repeat:no-repeat;background-size:100% 100%;width:{$wheelImgWidth}px;height:{$wheelImgHeight}px;z-index:35;"></div>
        <div id="rotateDiv" style="background-image:url('../HTML5/Wheel-arrow.png');background-repeat:no-repeat;background-size:100% 100%;z-index:40;" class="base rotate_translate"></div>
        <xsl:variable name="HitButton" select="/Interaction/node[@id='HitButton']" />
        <xsl:variable name="hitBtnTop" select="substring-before(substring-after($HitButton,'$'),'$')"></xsl:variable>
        <xsl:variable name="hitBtnLeft" select="substring-before($HitButton,'$')"></xsl:variable>
        <xsl:variable name="hitBtnWidth" select="substring-before(substring-after(substring-after($HitButton,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="hitBtnHeight" select="substring-before(substring-after(substring-after(substring-after($HitButton,'$'),'$'),'$'),'$')"></xsl:variable>
        <div id="hitBtn" onmouseover="changeHitBtnImageMouseOver();" onmouseout="changeHitBtnImageMouseOut();" style="position:absolute;background-image:url('../HTML5/Wheel-hit.png');background-repeat:no-repeat;background-size:100% 100%;left:{$hitBtnLeft}px;top:{$hitBtnTop}px;width:{$hitBtnWidth}px;height:{$hitBtnHeight}px;cursor:pointer;z-index:50;">
            <div class="txtControl" style="width:{40*$TargetViewSize_Factor}px;height:{20*$TargetViewSize_Factor}px;left:{4*$TargetViewSize_Factor}px;top:{14*$TargetViewSize_Factor}px;position:absolute;overflow:hidden;">
                <xsl:value-of select="/Interaction/node[@id='Hit Button Text']" disable-output-escaping="yes"/>
            </div>
        </div>
        <div id="nonClickhitBtn"  style="display:none;position:absolute;left:{$hitBtnLeft}px;top:{$hitBtnTop}px;width:{$hitBtnWidth}px;height:{$hitBtnHeight}px;cursor:default;z-index:51;"></div>
        <xsl:call-template name ="showTopicNames">
            <xsl:with-param name="totalTopics" select="$totalWheelParts" />
        </xsl:call-template>
    </div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="showTopicNames">
    <xsl:param name="totalTopics" />
    <xsl:if test="$totalTopics='8'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{275*$TargetViewSize_Factor}px;top:{195*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 4 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{205*$TargetViewSize_Factor}px;top:{280*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 5 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{105*$TargetViewSize_Factor}px;top:{280*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 6 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic4" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{35*$TargetViewSize_Factor}px;top:{205*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 7 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic5" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{35*$TargetViewSize_Factor}px;top:{115*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 8 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic6" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{105*$TargetViewSize_Factor}px;top:{45*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic7" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{200*$TargetViewSize_Factor}px;top:{45*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic8" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{275*$TargetViewSize_Factor}px;top:{110*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
    <xsl:if test="$totalTopics='7'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{275*$TargetViewSize_Factor}px;top:{151*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{240*$TargetViewSize_Factor}px;top:{250*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 4 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{130*$TargetViewSize_Factor}px;top:{280*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 5 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic4" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{40*$TargetViewSize_Factor}px;top:{215*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 6 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic5" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{40*$TargetViewSize_Factor}px;top:{125*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 7 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic6" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{115*$TargetViewSize_Factor}px;top:{45*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic7" style="width:{83*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{220*$TargetViewSize_Factor}px;top:{55*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
    <xsl:if test="$totalTopics='6'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{275*$TargetViewSize_Factor}px;top:{155*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{200*$TargetViewSize_Factor}px;top:{265*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 4 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{95*$TargetViewSize_Factor}px;top:{265*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 5 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic4" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{30*$TargetViewSize_Factor}px;top:{155*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 6 Title']" disable-output-escaping="yes"/>
        </div>
        <!--<div class="txtControl topicStyle" id="topic5" style="width:83px;height:37px;left:40px;top:125px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;"><xsl:value-of select="/Interaction/node[@id='Topic 6 Title']" disable-output-escaping="yes"/></div>-->
        <div dir="{$direction}" class="txtControl topicStyle" id="topic5" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{95*$TargetViewSize_Factor}px;top:{60*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic6" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{205*$TargetViewSize_Factor}px;top:{55*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
    <xsl:if test="$totalTopics='5'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{275*$TargetViewSize_Factor}px;top:{185*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{145*$TargetViewSize_Factor}px;top:{285*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 4 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{30*$TargetViewSize_Factor}px;top:{195*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 5 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic4" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{80*$TargetViewSize_Factor}px;top:{70*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic5" style="width:{90*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{200*$TargetViewSize_Factor}px;top:{55*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
    <xsl:if test="$totalTopics='4'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{200*$TargetViewSize_Factor}px;top:{260*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{75*$TargetViewSize_Factor}px;top:{260*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 4 Title']" disable-output-escaping="yes"/>
        </div>
        <!--<div class="txtControl topicStyle" id="topic3" style="width:90px;height:37px;left:30px;top:195px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;"><xsl:value-of select="/Interaction/node[@id='Topic 5 Title']" disable-output-escaping="yes"/></div>-->
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{75*$TargetViewSize_Factor}px;top:{70*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic4" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{200*$TargetViewSize_Factor}px;top:{75*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
    <xsl:if test="$totalTopics='3'">
        <div dir="{$direction}" class="txtControl topicStyle" id="topic2" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{40*$TargetViewSize_Factor}px;top:{210*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 3 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic3" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{135*$TargetViewSize_Factor}px;top:{50*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 1 Title']" disable-output-escaping="yes"/>
        </div>
        <div dir="{$direction}" class="txtControl topicStyle" id="topic1" style="width:{105*$TargetViewSize_Factor}px;height:{37*$TargetViewSize_Factor}px;left:{245*$TargetViewSize_Factor}px;top:{215*$TargetViewSize_Factor}px;position:absolute;z-index:35;overflow:hidden;word-wrap: break-word;text-align:left;">
            <xsl:value-of select="/Interaction/node[@id='Topic 2 Title']" disable-output-escaping="yes"/>
        </div>
    </xsl:if>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="getWheelInfo">
    <xsl:param name="CurrentIndex" />
    <xsl:param name="LastIndex" />
    <xsl:if test="$CurrentIndex &lt;= $LastIndex">
        <xsl:variable name="topicBgColor">
            <xsl:if test="$LastIndex='3'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='4'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='5'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='6'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='7'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='8'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+2) mod $LastIndex)+1),' Background Color')]" />
            </xsl:if>
        </xsl:variable>
        <xsl:variable name ="BgColor">
            <xsl:call-template name="ReplaceText">
                <xsl:with-param name="text" select="$topicBgColor" />
                <xsl:with-param name="replace" select="'0x'" />
                <xsl:with-param name="by" select="'#'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="topicName">
            <xsl:if test="$LastIndex='3'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='4'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='5'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='6'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='7'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
            <xsl:if test="$LastIndex='8'">
                <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number(($CurrentIndex+1) mod $LastIndex)+1),' Title')]" />
            </xsl:if>
        </xsl:variable>

      partsColor[
        <xsl:value-of select="number($CurrentIndex)-1" />]='
        <xsl:value-of select="$BgColor"/>';
      topic[
        <xsl:value-of select="number($CurrentIndex)-1" />]='
        <xsl:value-of select="$topicName"/>';
      orgTopic[
        <xsl:value-of select="number($CurrentIndex)-1" />]='
        <xsl:value-of select="/Interaction/node[@id=concat(concat('Topic ',number($CurrentIndex)),' Title')]" />';
      
        <xsl:call-template name ="getWheelInfo">
            <xsl:with-param name="CurrentIndex" select="$CurrentIndex+1" />
            <xsl:with-param name="LastIndex" select="$LastIndex" />
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<xsl:template name ="showQuestionPanel">
    <!--<div id="QueTxt" style="display:block ;top:10px;left:10px;width:280px;height:252px;position:absolute;z-index:45;" >-->
    <xsl:variable name="QuestionContainer" select="/Interaction/node[@id='QuestionContainer']" />
    <xsl:variable name="queContTop" select="substring-before(substring-after($QuestionContainer,'$'),'$')"></xsl:variable>
    <xsl:variable name="queContLeft" select="substring-before($QuestionContainer,'$')"></xsl:variable>
    <xsl:variable name="queContWidth" select="substring-before(substring-after(substring-after($QuestionContainer,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="queContHeight" select="substring-before(substring-after(substring-after(substring-after($QuestionContainer,'$'),'$'),'$'),'$')"></xsl:variable>
    <div class="txtControl" id="queContainer" style="display:block;position:absolute; width:{$queContWidth}px; height:{$queContHeight}px; top:{$queContTop}px; left:{$queContLeft}px;overflow:hidden;">
        <!--padding-left:5px;padding-top:10px;padding-bottom:20px;padding-right:20px-->
        <div id="queScrollContainer" class="Scroller-Container">
            <xsl:variable name="QuestionText" select="/Interaction/node[@id='QuestionText']" />
            <xsl:variable name="queTxtTop" select="substring-before(substring-after($QuestionText,'$'),'$')"></xsl:variable>
            <xsl:variable name="queTxtLeft" select="substring-before($QuestionText,'$')"></xsl:variable>
            <xsl:variable name="queTxtWidth" select="substring-before(substring-after(substring-after($QuestionText,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="queTxtHeight" select="substring-before(substring-after(substring-after(substring-after($QuestionText,'$'),'$'),'$'),'$')"></xsl:variable>
            <div id="question"  style="display:block;position:absolute; width:{$queTxtWidth}px;top:0px; left:0px">
                <xsl:call-template name="CreateQuestions">
                    <xsl:with-param name="currentIndex" select="1"></xsl:with-param>
                    <xsl:with-param name="totalQuestions" select="/Interaction/node[@id='Number of Questions']"></xsl:with-param>
                </xsl:call-template>
            </div>
        </div>
        <!--tanaji 12-6-13 added border:none for arrowTop1 arrowTop1-->
        <a href="#" id="queImgArrowUp" style="z-Index:30;position:absolute;left:{number($queContWidth)-20*$TargetViewSize_Factor}px;  top:0px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
            <img id="arrowTop1" src="../HTML5/arrow_top.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
        </a>
        <a href="#" id="queImgArrowDown" style="z-Index:30;position:absolute;left:{number($queContWidth)-20*$TargetViewSize_Factor}px; top:{number($queContHeight)-20*$TargetViewSize_Factor}px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
            <img id="arrowDown1" src="../HTML5/arrow_down.png" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none" />
        </a>
    </div>
    <!--</div>-->
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name ="showQuestionFeedbackPanel">
    <xsl:variable name="fdbkWidth" select="'337'" />
    <xsl:variable name="fdbkHeight" select="'150'" />
    <xsl:variable name="QueFeedback" select="/Interaction/node[@id='QueFeedback']" />
    <xsl:variable name="queFdbkTop" select="substring-before(substring-after($QueFeedback,'$'),'$')"></xsl:variable>
    <xsl:variable name="queFdbkLeft" select="substring-before($QueFeedback,'$')"></xsl:variable>
    <xsl:variable name="queFdbkWidth" select="substring-before(substring-after(substring-after($QueFeedback,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="queFdbkHeight" select="substring-before(substring-after(substring-after(substring-after($QueFeedback,'$'),'$'),'$'),'$')"></xsl:variable>
    <!-- Modified z-index from 45 to 742 by Priti to resolve issue 6393 22 Aug 2013 -->
    <div id="QueFedbkTxt" style="display:none ;background-image:url('../HTML5/Wheel-feedback-bg.png');background-size:100% 100% ;background-color:{$fdbkBgColor};background-repeat:no-repeat;top:{$queFdbkTop}px;left:{$queFdbkLeft}px;width:{$queFdbkWidth}px;height:{$queFdbkHeight}px;position:absolute;z-index:742; box-shadow: 0px 1px 8px 1px #000000;-webkit-box-shadow:0px 1px 8px 1px #000000;  -moz-box-shadow: 0px 1px 8px 1px #000000;border-radius:7px; " >
        <xsl:variable name="CloseButton" select="/Interaction/node[@id='CloseButton']" />
        <xsl:variable name="fdbkCloseTop" select="substring-before(substring-after($CloseButton,'$'),'$')"></xsl:variable>
        <xsl:variable name="fdbkCloseLeft" select="substring-before($CloseButton,'$')"></xsl:variable>
        <xsl:variable name="fdbkCloseWidth" select="substring-before(substring-after(substring-after($CloseButton,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="fdbkCloseHeight" select="substring-before(substring-after(substring-after(substring-after($CloseButton,'$'),'$'),'$'),'$')"></xsl:variable>
        <div id="closeFdbk" style="position:relative;top:{$fdbkCloseTop}px;left:{$fdbkCloseLeft}px;height:{$fdbkCloseHeight}px;width:{$fdbkCloseWidth}px;background-image:url('../HTML5/help_text_close.png');cursor:pointer;background-size: 100% 100%;" onmouseover="changeFedbkCloseImageMouseOver()" onmouseout="changeFedbkCloseImageMouseOut()" onclick="closeFedbkText()"></div>
        <xsl:variable name="QuestionFeedbackContainer" select="/Interaction/node[@id='QuestionFeedbackContainer']" />
        <xsl:variable name="fdbkContTop" select="substring-before(substring-after($QuestionFeedbackContainer,'$'),'$')"></xsl:variable>
        <xsl:variable name="fdbkContLeft" select="substring-before($QuestionFeedbackContainer,'$')"></xsl:variable>
        <xsl:variable name="fdbkContWidth" select="substring-before(substring-after(substring-after($QuestionFeedbackContainer,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="fdbkContHeight" select="substring-before(substring-after(substring-after(substring-after($QuestionFeedbackContainer,'$'),'$'),'$'),'$')"></xsl:variable>
        <div class="txtControl" id="queFedbkContainer" style="display:block;position:absolute; width:{$fdbkContWidth}px; height:{$fdbkContHeight}px; top:{$fdbkContTop}px; left:{$fdbkContLeft}px;overflow:hidden;">
            <!--padding-left:5px;padding-top:10px;padding-bottom:20px;padding-right:20px-->
            <div id="queFedbkScrollContainer" class="Scroller-Container">
                <xsl:variable name="QuestionFeedbackText" select="/Interaction/node[@id='QuestionFeedbackText']" />
                <xsl:variable name="fdbkTxtTop" select="substring-before(substring-after($QuestionFeedbackText,'$'),'$')"></xsl:variable>
                <xsl:variable name="fdbkTxtLeft" select="substring-before($QuestionFeedbackText,'$')"></xsl:variable>
                <xsl:variable name="fdbkTxtWidth" select="substring-before(substring-after(substring-after($QuestionFeedbackText,'$'),'$'),'$')"></xsl:variable>
                <xsl:variable name="fdbkTxtHeight" select="substring-before(substring-after(substring-after(substring-after($QuestionFeedbackText,'$'),'$'),'$'),'$')"></xsl:variable>
                <div id="questionFedbk"  style="display:block;position:absolute; width:{$fdbkTxtWidth}px;top:0px; left:{$fdbkTxtLeft}px">
                    <xsl:call-template name="CreateFeedback">
                        <xsl:with-param name="currentIndex" select="1"></xsl:with-param>
                        <xsl:with-param name="totalQuestions" select="/Interaction/node[@id='Number of Questions']"></xsl:with-param>
                    </xsl:call-template>
                </div>
            </div>
            <a href="#" id="queFedbkImgArrowUp" onmouseover="scrollerFdbkText.startScroll(0, 5);" onmouseout="scrollerFdbkText.stopScroll();" style="z-Index:30;position:absolute;left:{number($fdbkContWidth)-20*$TargetViewSize_Factor}px;  top:0px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                <img id="arrowTop1" src="../HTML5/arrow_top.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
            </a>
            <!--tanaji 12-6-13 added border:none for arrowUp1 arrowDown1-->
            <a href="#" id="queFedbkImgArrowDown" onmouseover="scrollerFdbkText.startScroll(0, -5);" onmouseout="scrollerFdbkText.stopScroll();" style="z-Index:30;position:absolute;left:{number($fdbkContWidth)-20*$TargetViewSize_Factor}px; top:{number($fdbkContHeight)-17*$TargetViewSize_Factor}px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                <img id="arrowDown1" src="../HTML5/arrow_down.png" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
            </a>
        </div>
    </div>
    <div  id="optionNonClickDiv"  style="display:none;top:{$optionTop}px;left:{$optionLeft}px;width:402px;height:93px;position:absolute;z-index:61;"></div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="CreateFeedback">
    <xsl:param name="currentIndex"></xsl:param>
    <xsl:param name="totalQuestions"></xsl:param>
    <xsl:if test="$currentIndex &lt;=$totalQuestions">
        <xsl:variable name="correctFdbk" select="/Interaction/node[@id=concat('Correct Answer Feedback',$currentIndex)]" />
        <xsl:variable name="correctFdbkSnd" select="/Interaction/node[@id=concat('Correct Answer Feedback Sound',$currentIndex)]" />
        <xsl:variable name="incorrectFdbk" select="/Interaction/node[@id=concat('Incorrect Answer Feedback',$currentIndex)]" />
        <xsl:variable name="incorrectFdbkSnd" select="/Interaction/node[@id=concat('Incorrect Answer Feedback Sound',$currentIndex)]" />
        <div sound="{concat($audioPath,$correctFdbkSnd)}" id="{concat('correctFdbk',$currentIndex)}"  style="display:none;">
            <xsl:value-of select="$correctFdbk" disable-output-escaping="yes" />
        </div>
        <div sound="{concat($audioPath,$incorrectFdbkSnd)}" id="{concat('incorrectFdbk',$currentIndex)}"  style="display:none;">
            <xsl:value-of select="$incorrectFdbk" disable-output-escaping="yes" />
        </div>
        <xsl:call-template name="CreateFeedback">
            <xsl:with-param name="currentIndex" select="$currentIndex+1"></xsl:with-param>
            <xsl:with-param name="totalQuestions" select="$totalQuestions"></xsl:with-param>
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<xsl:template name="CreateQuestions">
    <xsl:param name="currentIndex"></xsl:param>
    <xsl:param name="totalQuestions"></xsl:param>
    <xsl:if test="$currentIndex &lt;=$totalQuestions">
        <xsl:variable name="correctAns" select="/Interaction/node[@id=concat('Correct Answer',$currentIndex)]" />
        <xsl:variable name="queSound" select="/Interaction/node[@id=concat('Question Sound',$currentIndex)]" />
        <xsl:variable name="topic" select="/Interaction/node[@id=concat('Topic Title',$currentIndex)]" />
        <div sound="{concat($audioPath,$queSound)}" id="{concat('Question',$currentIndex)}" topicParent="{$topic}" yourAns="" correctAns="{$correctAns}" style="display:none;">
            <div dir="{$direction}" class="txtControl" sound="{concat($audioPath,$queSound)}" id="{concat('QuestionText',$currentIndex)}" topicParent="{$topic}" yourAns="" correctAns="{$correctAns}" style="display:block;padding-left:7px">
                <xsl:value-of select="/Interaction/node[@id=concat('Question Text',$currentIndex)]" disable-output-escaping="yes" />
            </div>
            <xsl:variable name="totalOption">
                <xsl:choose>
                    <xsl:when test="$versionId &gt;6.5">
                        <xsl:value-of select="/Interaction/node[@id=concat('No. of Choices',$currentIndex)]"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="/Interaction/node[@id=concat('No of Choices',$currentIndex)]"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="QuestionText" select="/Interaction/node[@id='QuestionText']" />
            <xsl:variable name="queTxtTop" select="substring-before(substring-after($QuestionText,'$'),'$')"></xsl:variable>
            <xsl:variable name="queTxtLeft" select="substring-before($QuestionText,'$')"></xsl:variable>
            <xsl:variable name="queTxtWidth" select="substring-before(substring-after(substring-after($QuestionText,'$'),'$'),'$')"></xsl:variable>
            <div id="{concat('QuestionOptoins',$currentIndex)}" correctAns="{$correctAns}" style="display:block;top:{$optionTop}px;left:{$optionLeft}px;width:{$queTxtWidth}px;position:relative;z-index:60;">
                <xsl:call-template name="CreateOptions">
                    <xsl:with-param name="currentIndex" select="'1'"></xsl:with-param>
                    <xsl:with-param name="queIndex" select="$currentIndex"></xsl:with-param>
                    <xsl:with-param name="totalOptions" select="$totalOption"></xsl:with-param>
                </xsl:call-template>
            </div>
        </div>
        <xsl:call-template name="CreateQuestions">
            <xsl:with-param name="currentIndex" select="$currentIndex+1"></xsl:with-param>
            <xsl:with-param name="totalQuestions" select="$totalQuestions"></xsl:with-param>
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!--tanaji 20-6-2013 added block for RtoL -->
<xsl:variable name="RtoL" select="/Interaction/@RtoLflag"></xsl:variable>
<xsl:variable name="direction">
    <xsl:choose>
        <xsl:when test="$RtoLflag = 'True'">
            <xsl:value-of select="'rtl'"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="'ltr'"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:variable>
<xsl:template name="CreateOptions">
    <xsl:param name="currentIndex"></xsl:param>
    <xsl:param name="queIndex"></xsl:param>
    <xsl:param name="totalOptions"></xsl:param>
    <xsl:variable name="setAlign">
        <xsl:choose>
            <xsl:when test="$RtoLflag='True'">
                <xsl:value-of select="'right'"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'left'"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:if test="$currentIndex &lt;=$totalOptions">
        <xsl:variable name="optionName" select="/Interaction/node[@id=concat(concat('Choice ',$currentIndex),$queIndex)]" />
        <div  class="txtControl shadow" id="{concat('option',$currentIndex)}"  style="cursor:pointer;font-family:{$optFontName};font-size:{$optFontSize*$TargetViewSize_Factor}px;font-weight:{$optFontBold};font-style:{$optFontItalic}; color:{$optFontColor};top:0px;left:0px;width:{194*$TargetViewSize_Factor}px;position:relative;">
            <!--tanaji modified width 279 to 261 -->
            <!--<div  style="top:{10*$TargetViewSize_Factor}px;left:{2*$TargetViewSize_Factor}px;width:{261*$TargetViewSize_Factor}px;position:relative;overflow:hidden;text-align:{$setAlign};">-->
            <table>
                <tr>
                    <td valign="top">
                        <input type="radio" name="options" style="z-index:50" value="{$optionName}" onclick="onClickRadio();"/>
                    </td>
                    <!--</div>-->
                    <!--tanaji added dir="{$direction}" attribute for RtoL -->
                    <!--tanaji modified width 233 to 216 -->
                    <td>
                        <div dir="{$direction}" id="{concat('opt',$currentIndex)}"  style="top:0px;left:0px;width:{216*$TargetViewSize_Factor}px;position:relative;text-align:{$setAlign};">
                            <xsl:value-of select="/Interaction/node[@id=concat(concat('Choice ',$currentIndex),$queIndex)]" disable-output-escaping="yes" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <xsl:call-template name="CreateOptions">
            <xsl:with-param name="currentIndex" select="$currentIndex+1"></xsl:with-param>
            <xsl:with-param name="queIndex" select="$queIndex"></xsl:with-param>
            <xsl:with-param name="totalOptions" select="$totalOptions"></xsl:with-param>
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="displayScorePanel">
    <div id="scorePanel" class = "dragThis" style="z-index:30;cursor:default;display:block;position:absolute;background-image:url('../HTML5/Wheel-score.png');background-repeat:no-repeat;background-size:100% 100%;top:{$ScorePnltop}px;left:{$ScorePnlleft}px;width:{110*$TargetViewSize_Factor}px;height:{30*$TargetViewSize_Factor}px">
        <!--<div id="scoreHeading" class="txtControl"  style="cursor:text;display:block;position:absolute;background-repeat:no-repeat;background-size:100% 100%;background-image:url('score_head.png');background-color:{$scoreHeadingColor};top:3px;left:3px;width:98px;height:24px;overflow: hidden;"><div class="txtControl" style="top:3px;width:98px;height:24px;position:absolute;overflow: hidden;"><xsl:value-of select ="/Interaction/node[@id='Score Heading']" disable-output-escaping="yes" /></div></div>-->
        <xsl:variable name ="fontName" select ="/Interaction/node[@id='Scoreboard FontFace']"></xsl:variable>
        <xsl:variable name ="fontSize" select ="/Interaction/node[@id='Scoreboard FontSize']"></xsl:variable>
        <xsl:variable name ="fontBold">
            <xsl:call-template name="IsBold">
                <xsl:with-param name="Bold" select ="/Interaction/node[@id='Scoreboard FontBold']" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name ="fontItalic">
            <xsl:call-template name="IsItalic">
                <xsl:with-param name="Italic" select ="/Interaction/node[@id='Scoreboard FontItalic']" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name ="fontColor">
            <xsl:call-template name="ReplaceText">
                <xsl:with-param name="text" select ="/Interaction/node[@id='Scoreboard Color']" />
                <xsl:with-param name="replace" select="'0x'" />
                <xsl:with-param name="by" select="'#'" />
            </xsl:call-template>
        </xsl:variable>
        <div id="score"  style="cursor:default;display:block;position:absolute;background-repeat:no-repeat;background-size:100% 100%;background-image:url('score.png');top:{1*$TargetViewSize_Factor}px;left:{35*$TargetViewSize_Factor}px;width:{70*$TargetViewSize_Factor}px;height:{30*$TargetViewSize_Factor}px;font-family:{$fontName};font-size:{$fontSize*$TargetViewSize_Factor}px;font-weight:{$fontBold};font-style:{$fontItalic}; color:{$fontColor};" >
            <div id="innerScoreStage1" style="left:{25*$TargetViewSize_Factor}px;top:{2*$TargetViewSize_Factor}px;position:absolute;">0</div>
        </div>
    </div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<xsl:template name ="CreateFinalFeedback">
    <xsl:variable name ="feedbackBgColor">
        <xsl:call-template name="ReplaceText">
            <xsl:with-param name="text" select ="/Interaction/node[@id='Feedback  Background Color']" />
            <xsl:with-param name="replace" select="'0x'" />
            <xsl:with-param name="by" select="'#'" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="EndFeedback" select="/Interaction/node[@id='EndFeedback']" />
    <xsl:variable name="endFdbkTop" select="substring-before(substring-after($EndFeedback,'$'),'$')"></xsl:variable>
    <xsl:variable name="endFdbkLeft" select="substring-before($EndFeedback,'$')"></xsl:variable>
    <xsl:variable name="endFdbkWidth" select="substring-before(substring-after(substring-after($EndFeedback,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="endFdbkHeight" select="substring-before(substring-after(substring-after(substring-after($EndFeedback,'$'),'$'),'$'),'$')"></xsl:variable>
    <div id="FinalFedbkTxt" style="display:none;background-image:url('../HTML5/Wheel-feedback-bg.png');background-repeat:no-repeat;background-size:100% 100%;z-Index:750; background-color:{$feedbackBgColor};position:absolute;top:{$endFdbkTop}px; left: {$endFdbkLeft}px; width: {$endFdbkWidth}px; height: {$endFdbkHeight}px;border-radius:10px;background-repeat:no-repeat;background-size:100% 100%;cursor:text; box-shadow: 1px 1px 8px 2px #000000;-webkit-box-shadow:1px 1px 8px 2px #000000;  -moz-box-shadow: 1px 1px 8px 2px #000000; " >
        <xsl:variable name="EndFeedbackContainer" select="/Interaction/node[@id='EndFeedbackContainer']" />
        <xsl:variable name="endFdbkContTop" select="substring-before(substring-after($EndFeedbackContainer,'$'),'$')"></xsl:variable>
        <xsl:variable name="endFdbkContLeft" select="substring-before($EndFeedbackContainer,'$')"></xsl:variable>
        <xsl:variable name="endFdbkContWidth" select="substring-before(substring-after(substring-after($EndFeedbackContainer,'$'),'$'),'$')"></xsl:variable>
        <xsl:variable name="endFdbkContHeight" select="substring-before(substring-after(substring-after(substring-after($EndFeedbackContainer,'$'),'$'),'$'),'$')"></xsl:variable>
        <div class="txtControl" id="FinalFedbkTxtContainer" style="display:block;position:absolute; width:{$endFdbkContWidth}px; height:{$endFdbkContHeight}px; top:{$endFdbkContTop}px; left:{$endFdbkContLeft}px;overflow:hidden;z-index:10;">
            <!--padding-left:5px;padding-top:10px;padding-bottom:20px;padding-right:20px-->
            <div id="FinalFedbkScrollContainer" class="Scroller-Container">
                <xsl:variable name="EndFeedbackText" select="/Interaction/node[@id='EndFeedbackText']" />
                <xsl:variable name="endFdbkTxtTop" select="substring-before(substring-after($EndFeedbackText,'$'),'$')"></xsl:variable>
                <xsl:variable name="endFdbkTxtLeft" select="substring-before($EndFeedbackText,'$')"></xsl:variable>
                <xsl:variable name="endFdbkTxtWidth" select="substring-before(substring-after(substring-after($EndFeedbackText,'$'),'$'),'$')"></xsl:variable>
                <xsl:variable name="endFdbkTxtHeight" select="substring-before(substring-after(substring-after(substring-after($EndFeedbackText,'$'),'$'),'$'),'$')"></xsl:variable>
                <div id="FinalFeedback" style="display:block;position:absolute; width:{$endFdbkTxtWidth}px;top:0px; left:{$endFdbkTxtLeft}px">
                    <!--<xsl:variable name="correctSoundFile"  select="/Interaction/node[@id='Correct Feedback Sound']"></xsl:variable><div id="correctFinalFeedback" class="txtControl"  sound="{concat($audioPath,$correctSoundFile)}" style="display:none;"><xsl:value-of select="/Interaction/node[@id='Correct Feedback']" disable-output-escaping="yes" /></div><xsl:variable name="incorrectFedbkSoundFile" select="/Interaction/node[@id='Incorrect Feedback Sound']"></xsl:variable><div id="incorrectFinalFeedback" class="txtControl" sound="{concat($audioPath,$incorrectFedbkSoundFile)}" style="display:none;"><xsl:value-of select="/Interaction/node[@id='Incorrect Feedback']" disable-output-escaping="yes" /></div>-->
                    <div id="endOfFinalFeedback" class="txtControl"  style="display:none;">
                        <xsl:value-of select="/Interaction/node[@id='End of Game Feedback']" disable-output-escaping="yes" />
                    </div>
                    <div id="giveUpFeedback" class="txtControl" style="display:none;">
                        <xsl:value-of select="/Interaction/node[@id='Give Up Feedback']" disable-output-escaping="yes" />
                    </div>
                    <xsl:variable name ="fontName" select ="/Interaction/node[@id='Check Answer FontFace']"></xsl:variable>
                    <xsl:variable name ="fontSize" select ="/Interaction/node[@id='Check Answer FontSize']"></xsl:variable>
                    <xsl:variable name ="fontBold">
                        <xsl:call-template name="IsBold">
                            <xsl:with-param name="Bold" select ="/Interaction/node[@id='Check Answer FontBold']" />
                        </xsl:call-template>
                    </xsl:variable>
                    <xsl:variable name ="fontItalic">
                        <xsl:call-template name="IsItalic">
                            <xsl:with-param name="Italic" select ="/Interaction/node[@id='Check Answer FontItalic']" />
                        </xsl:call-template>
                    </xsl:variable>
                    <xsl:variable name ="fontColor">
                        <xsl:call-template name="ReplaceText">
                            <xsl:with-param name="text" select ="/Interaction/node[@id='Check Answer Color']" />
                            <xsl:with-param name="replace" select="'0x'" />
                            <xsl:with-param name="by" select="'#'" />
                        </xsl:call-template>
                    </xsl:variable>
                    <!--<style>
              .checkAnswerDivClass
              {
              posirion:relative; top:0px;left:0px;width:500px;display:none;
              font-family:<xsl:value-of select="$fontName"></xsl:value-of>;
              font-size:<xsl:value-of select="$CheckAnswerFontSize"></xsl:value-of>;
              color:<xsl:value-of select="$CheckAnswerColor"></xsl:value-of>;
              font-weight:<xsl:value-of select="$CheckAnswerFontBold"></xsl:value-of>;
              font-style:<xsl:value-of select="$CheckAnswerFontItalic"></xsl:value-of>;
              }
            </style>-->
                    <!--<xsl:call-template name="CreateTopicWiseTitles"><xsl:with-param name="topicNo" select="1"></xsl:with-param><xsl:with-param name="totalTopics" select="/Interaction/node[@id='Number of Topics']"></xsl:with-param></xsl:call-template>-->
                    <xsl:variable name="setAlign">
                        <xsl:choose>
                            <xsl:when test="$RtoLflag='True'">
                                <xsl:value-of select="'right'"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="'left'"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <!--tanaji 19-6-13 added dir="{$direction}" for RtoL-->
                    <div dir="{$direction}" id="checkAnswerDiv" class="txtControl" style="text-align:{$setAlign};font-family:{$fontName};font-size:{$fontSize*$TargetViewSize_Factor}px;font-weight:{$fontBold};font-style:{$fontItalic}; color:{$fontColor}; position:relative;"></div>
                </div>
            </div>
            <!--tanaji 12-6-13 added border:none for arrowTop1 arrowDown1-->
            <a href="#" id="finalFedbkImgArrowUp" onmouseover="scrollerFinalFedbkText.startScroll(0, 5);" onmouseout="scrollerFinalFedbkText.stopScroll();" style="z-Index:30;position:absolute;left:{number($endFdbkContWidth)-20*$TargetViewSize_Factor}px;  top:0px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                <img id="arrowTop1" src="../HTML5/arrow_top.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none" />
            </a>
            <a href="#" id="finalFedbkImgArrowDown" onmouseover="scrollerFinalFedbkText.startScroll(0, -5);" onmouseout="scrollerFinalFedbkText.stopScroll();" style="z-Index:30;position:absolute;left:{number($endFdbkContWidth)-20*$TargetViewSize_Factor}px; top:{number($endFdbkContHeight)-20*$TargetViewSize_Factor}px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
                <img id="arrowDown1" src="../HTML5/arrow_down.png" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none" />
            </a>
            <!--<xsl:variable name="endOfGameSoundFile" select="/Interaction/node[@id='End of Game Feedback Sound']"></xsl:variable><div id="endOfGameFeedback" class="txtControl"  style="display:none;position:absolute;left:10px;top:10px;width:300px;height:140px;overflow:hidden;"  sound="{concat($audioPath,$endOfGameSoundFile)}"><xsl:value-of select="/Interaction/node[@id='End of Game Feedback']" disable-output-escaping="yes" /></div>-->
        </div>
        <xsl:if test="$showRestartBtn='True'">
            <xsl:variable name="ImageWidth" select="/Interaction/node[@id='Restart ButtonWidth']" />
            <xsl:variable name="ImageHeight" select="/Interaction/node[@id='Restart ButtonHeight']" />
            <xsl:variable name="TargetWidth" select="'90'" />
            <xsl:variable name="TargetHeight" select="'30'"/>
            <xsl:variable name="widthHeight">
                <xsl:call-template name="ImageScale">
                    <xsl:with-param name="Target_Width" select="$TargetWidth"></xsl:with-param>
                    <xsl:with-param name="Target_Height" select="$TargetHeight"></xsl:with-param>
                    <xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param>
                    <xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param>
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" />
            <xsl:variable name="ImgHeight">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$TargetHeight"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="ImgWidth">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$TargetWidth"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="ImageSetting">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                    </xsl:when>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="FdbkRestartButton" select="/Interaction/node[@id='FdbkRestartButton']" />
            <xsl:variable name="endFdbkRestartTop" select="substring-before(substring-after($FdbkRestartButton,'$'),'$')"></xsl:variable>
            <xsl:variable name="endFdbkRestartLeft" select="substring-before($FdbkRestartButton,'$')"></xsl:variable>
            <xsl:variable name="endFdbkRestartWidth" select="substring-before(substring-after(substring-after($FdbkRestartButton,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="endFdbkRestartHeight" select="substring-before(substring-after(substring-after(substring-after($FdbkRestartButton,'$'),'$'),'$'),'$')"></xsl:variable>
            <img id="restartOnFedbk" class="MAR" imageSetting="{$ImageSetting}${$TargetWidth*$TargetViewSize_Factor}${$TargetHeight*$TargetViewSize_Factor}" src="../Pics/{$RestartButtonImage}" style="cursor:pointer;display:block;position:absolute;top:{$endFdbkRestartTop}px;left:{$endFdbkRestartLeft}px;width:{$ImgWidth*$TargetViewSize_Factor}px;height:{$ImgHeight*$TargetViewSize_Factor}px" onclick="RefreshWindow();"/>
        </xsl:if>
        <xsl:if test="$showChkAnsBtn='True'">
            <xsl:variable name="ImageWidth" select="/Interaction/node[@id='Check Answer ButtonWidth']" />
            <xsl:variable name="ImageHeight" select="/Interaction/node[@id='Check Answer ButtonHeight']" />
            <xsl:variable name="TargetWidth" select="'105'" />
            <xsl:variable name="TargetHeight" select="'30'"/>
            <xsl:variable name="widthHeight">
                <xsl:call-template name="ImageScale">
                    <xsl:with-param name="Target_Width" select="$TargetWidth"></xsl:with-param>
                    <xsl:with-param name="Target_Height" select="$TargetHeight"></xsl:with-param>
                    <xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param>
                    <xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param>
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" />
            <xsl:variable name="ImgHeight">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$TargetHeight"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="ImgWidth">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$TargetWidth"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="ImageSetting">
                <xsl:choose>
                    <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                        <xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
                    </xsl:when>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="FdbkCheckAnsButton" select="/Interaction/node[@id='FdbkCheckAnsButton']" />
            <xsl:variable name="endFdbkCheckAnsTop" select="substring-before(substring-after($FdbkCheckAnsButton,'$'),'$')"></xsl:variable>
            <xsl:variable name="endFdbkCheckAnsLeft" select="substring-before($FdbkCheckAnsButton,'$')"></xsl:variable>
            <xsl:variable name="endFdbkCheckAnsWidth" select="substring-before(substring-after(substring-after($FdbkCheckAnsButton,'$'),'$'),'$')"></xsl:variable>
            <xsl:variable name="endFdbkCheckAnsHeight" select="substring-before(substring-after(substring-after(substring-after($FdbkCheckAnsButton,'$'),'$'),'$'),'$')"></xsl:variable>
            <img id="chkAnsBtn" src="../Pics/{$CheckAnsButtonImage}" class="MAR" imageSetting="{$ImageSetting}${$TargetWidth*$TargetViewSize_Factor}${$TargetHeight*$TargetViewSize_Factor}" style="cursor:pointer;display:block;position:absolute;top:{$endFdbkCheckAnsTop}px;left:{$endFdbkCheckAnsLeft}px;width:{$ImgWidth*$TargetViewSize_Factor}px;height:{$ImgHeight*$TargetViewSize_Factor}px" onclick="checkAnswerClicked();"/>
        </xsl:if>
        <div id="chkAnsTitle" class="txtControl"  style="display:none;width:350px;height:20px;top:10px;left:10px;position:absolute;overflow:hidden;">
            <xsl:value-of select="/Interaction/node[@id='Check Answer Title']" disable-output-escaping="yes" />
        </div>
    </div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<xsl:template name ="DisplayTimer">
    <xsl:param name ="timerPosition"></xsl:param>
    <xsl:variable name="top" select="substring-before(substring-after($timerPosition,'$'),'$')"></xsl:variable>
    <xsl:variable name="left" select="substring-before($timerPosition,'$')"></xsl:variable>
    <xsl:variable name="width" select="substring-before(substring-after(substring-after($timerPosition,'$'),'$'),'$')"></xsl:variable>
    <xsl:variable name="height" select="substring-before(substring-after(substring-after(substring-after($timerPosition,'$'),'$'),'$'),'$')-2"></xsl:variable>
    <xsl:variable name ="fontName" select ="/Interaction/node[@id='Timer FontFace']"></xsl:variable>
    <xsl:variable name ="fontSize" select ="/Interaction/node[@id='Timer FontSize']"></xsl:variable>
    <xsl:variable name ="fontBold">
        <xsl:call-template name="IsBold">
            <xsl:with-param name="Bold" select ="/Interaction/node[@id='Timer FontBold']" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name ="fontItalic">
        <xsl:call-template name="IsItalic">
            <xsl:with-param name="Italic" select ="/Interaction/node[@id='Timer FontItalic']" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name ="fontColor">
        <xsl:call-template name="ReplaceText">
            <xsl:with-param name="text" select ="/Interaction/node[@id='Timer Color']" />
            <xsl:with-param name="replace" select="'0x'" />
            <xsl:with-param name="by" select="'#'" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name ="timerBgColor">
        <xsl:call-template name="ReplaceText">
            <xsl:with-param name="text" select ="/Interaction/node[@id='Timer Background Color']" />
            <xsl:with-param name="replace" select="'0x'" />
            <xsl:with-param name="by" select="'#'" />
        </xsl:call-template>
    </xsl:variable>
    <div id="timer" style="display:none;background-image:url('timer_border.png');background-repeat:no-repeat; background-size: 100% 100%;position:absolute;width:90px; height:30px; top:{$top}px; left: {$left}px;z-index:70;border-radius:5px;box-shadow:0 0 3px 1px #000000;-webkit-box-shadow:0 0 3px 1px #000000; -moz-box-shadow:0 0 3px 1px #000000;">
        <div id="timerCont" style="background-size: 100% 100%;display:block;background-image:url('timer.png');background-repeat:no-repeat;background-color:{$timerBgColor};text-align:center;black;border-radius:5px;padding-top:6px;font-family:{$fontName};font-size:{$fontSize}px;font-weight:{$fontBold};font-style:{$fontItalic}; color:{$fontColor}; position:absolute;width:86px; height:21px; top:0px; left:2px;cursor:default;"></div>
    </div>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name ="CreateAudioControl">
    <xsl:param name="SoundPosition"></xsl:param>
    <xsl:param name="OnImage"></xsl:param>
    <xsl:param name="OffImage"></xsl:param>
    <xsl:param name ="AudioControlType"></xsl:param>
    <xsl:choose>
        <xsl:when test ="$AudioControlType='Upload Audio Image'">
            <a href="#" onclick="javascript:toggleSoundButton()" style="border-style: none">
                <xsl:call-template name="DisplayImageForSound">
                    <xsl:with-param name="controlId" select="'interactionAudio'"></xsl:with-param>
                    <xsl:with-param name="path" select="$OnImage"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($SoundPosition,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($SoundPosition,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="'25'"></xsl:with-param>
                    <xsl:with-param name="height" select="'25'"></xsl:with-param>
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                </xsl:call-template>
            </a>
        </xsl:when>
        <xsl:otherwise>
            <a href="#" onclick="javascript:toggleSoundButton()" style="border-style: none">
                <xsl:call-template name="DisplayImageForSound">
                    <xsl:with-param name="controlId" select="'interactionAudio'"></xsl:with-param>
                    <xsl:with-param name="path" select="'../HTML5/sound_on.png'"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($SoundPosition,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($SoundPosition,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="'25'"></xsl:with-param>
                    <xsl:with-param name="height" select="'25'"></xsl:with-param>
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                </xsl:call-template>
            </a>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!-- ************************************************************************************************************************************** -->
<!--<xsl:template name="DisplayImage"><xsl:param name="controlId"></xsl:param><xsl:param name="path"></xsl:param><xsl:param name="top"></xsl:param><xsl:param name="left"></xsl:param><xsl:param name="width"></xsl:param><xsl:param name="height"></xsl:param><xsl:param name="position"></xsl:param><xsl:variable name="picPath" select="'../Pics/'" /><xsl:variable name="audioPath" select="'../Waves/'" /><xsl:variable name="ImageWidth"><xsl:choose><xsl:when test="$controlId='interactionBackgroundImage'"><xsl:value-of select="/Interaction/node[@id='Background ImageWidth']" /></xsl:when><xsl:otherwise><xsl:choose><xsl:when test="contains($controlId,'ButtonPopupImage')"><xsl:variable name="index" select="substring($controlId,string-length($controlId))" /><xsl:value-of select="/Interaction/node[@id=concat('Set Popup ImageWidth',$index)]" /></xsl:when><xsl:otherwise><xsl:value-of select="$width" /></xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose></xsl:variable><xsl:variable name="ImageHeight"><xsl:choose><xsl:when test="$controlId='interactionBackgroundImage'"><xsl:value-of select="/Interaction/node[@id='Background ImageHeight']" /></xsl:when><xsl:otherwise><xsl:choose><xsl:when test="contains($controlId,'ButtonPopupImage')"><xsl:variable name="index" select="substring($controlId,string-length($controlId))" /><xsl:value-of select="/Interaction/node[@id=concat('Set Popup ImageHeight',$index)]" /></xsl:when><xsl:otherwise><xsl:value-of select="$height" /></xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose></xsl:variable><xsl:variable name="TargetWidth" select="$width" /><xsl:variable name="TargetHeight" select="$height"/><xsl:variable name="widthHeight"><xsl:call-template name="ImageScale"><xsl:with-param name="Target_Width" select="$TargetWidth"></xsl:with-param><xsl:with-param name="Target_Height" select="$TargetHeight"></xsl:with-param><xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param><xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param></xsl:call-template></xsl:variable><xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" /><xsl:variable name="ImgHeight"><xsl:choose><xsl:when test="$ImageScaling='Maintain aspect ratio'"><xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of></xsl:when><xsl:otherwise><xsl:value-of select="$TargetHeight"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:variable><xsl:variable name="ImgWidth"><xsl:choose><xsl:when test="$ImageScaling='Maintain aspect ratio'"><xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of></xsl:when><xsl:otherwise><xsl:value-of select="$TargetWidth"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:variable><xsl:variable name="ImageSetting"><xsl:choose><xsl:when test="$ImageScaling='Maintain aspect ratio'"><xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of></xsl:when></xsl:choose></xsl:variable><img id="{$controlId}" class="MAR" imageSetting="{$ImageSetting}${$TargetWidth*$TargetViewSize_Factor}${$TargetHeight*$TargetViewSize_Factor}" src="{concat($picPath,$path)}" alt="" style="position:{$position};top:{$top}px;left:{$left}px;width:{$ImgWidth}px;height:{$ImgHeight}px; background-repeat: no-repeat;margin:0 0 0 0 0;border-style:none" /></xsl:template>-->
<xsl:template name="DisplayImage">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="path"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="position"></xsl:param>
    <xsl:variable name="picPath" select="'../Pics/'" />
    <xsl:variable name="audioPath" select="'../Waves/'" />
    <xsl:variable name="ImageWidth">
        <xsl:choose>
            <xsl:when test="$controlId='interactionBackgroundImage'">
                <xsl:value-of select="/Interaction/node[@id='Background ImageWidth']" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="contains($controlId,'ButtonPopupImage')">
                        <xsl:variable name="index" select="substring($controlId,string-length($controlId))" />
                        <xsl:value-of select="/Interaction/node[@id=concat('Set Popup ImageWidth',$index)]" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$width" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="ImageHeight">
        <xsl:choose>
            <xsl:when test="$controlId='interactionBackgroundImage'">
                <xsl:value-of select="/Interaction/node[@id='Background ImageHeight']" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="contains($controlId,'ButtonPopupImage')">
                        <xsl:variable name="index" select="substring($controlId,string-length($controlId))" />
                        <xsl:value-of select="/Interaction/node[@id=concat('Set Popup ImageHeight',$index)]" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$height" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="TargetWidthImage" select="$width" />
    <xsl:variable name="TargetHeightImage" select="$height"/>
    <xsl:variable name="widthHeight">
        <xsl:call-template name="ImageScale">
            <xsl:with-param name="Target_Width" select="$TargetWidthImage"></xsl:with-param>
            <xsl:with-param name="Target_Height" select="$TargetHeightImage"></xsl:with-param>
            <xsl:with-param name="ImgWidth" select="$ImageWidth"></xsl:with-param>
            <xsl:with-param name="ImgHeight" select="$ImageHeight"></xsl:with-param>
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="widthHeightOfScaledImage" select="$widthHeight" />
    <xsl:variable name="ImgHeight">
        <xsl:choose>
            <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                <xsl:value-of select="substring-before(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$TargetHeightImage"></xsl:value-of>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="ImgWidth">
        <xsl:choose>
            <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                <xsl:value-of select="substring-before($widthHeightOfScaledImage,'$')"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$TargetWidthImage"></xsl:value-of>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="ImageSetting">
        <xsl:choose>
            <xsl:when test="$ImageScaling='Maintain aspect ratio'">
                <xsl:value-of select="substring-after(substring-after($widthHeightOfScaledImage,'$'),'$')"></xsl:value-of>
            </xsl:when>
        </xsl:choose>
    </xsl:variable>
    <xsl:choose>
        <xsl:when test="contains($controlId,'ButtonPopupImage')">
            <xsl:if test = "$path !=''">
                <img id="{$controlId}" class="MAR" imageSetting="{$ImageSetting}${$TargetWidthImage}${$TargetHeightImage}" src="{concat($picPath,$path)}" alt="" style="position:{$position};top:{$top}px;left:{$left}px;width:{$ImgWidth}px;height:{$ImgHeight}px; background-repeat: no-repeat;margin:0 0 0 0 0;border-style:none"></img>
            </xsl:if>
        </xsl:when>
        <xsl:otherwise>
            <xsl:if test = "$path !=''">
                <img id="{$controlId}" class="MAR" imageSetting="{$ImageSetting}${$TargetWidthImage*$TargetViewSize_Factor}${$TargetHeightImage*$TargetViewSize_Factor}" src="{concat($picPath,$path)}" alt="" style="position:{$position};top:{$top}px;left:{$left}px;width:{$ImgWidth*$TargetViewSize_Factor}px;height:{$ImgHeight*$TargetViewSize_Factor}px; background-repeat: no-repeat;margin:0 0 0 0 0;border-style:none"></img>
            </xsl:if>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<!-- **************************************************************************************************************************************-->
<!-- **************************************************** ALL ADDITIONAL MEDIA FUNCTIOS *************************************************** -->
<xsl:template name ="CreateMediaCollection">
    <!--<xsl:value-of select="CreateMediaCollection"></xsl:value-of>-->
    <xsl:variable name ="Nodes" select ="/Interaction/node[@id='Number of Nodes']"></xsl:variable>
    <!--<xsl:value-of select="$Nodes"></xsl:value-of>-->
    <xsl:if test="$Nodes &gt; '0'">
        <xsl:call-template name ="CreateMedia">
            <xsl:with-param name ="CurrentIndex" select ="1"></xsl:with-param>
            <xsl:with-param name ="LastIndex" select ="$Nodes"></xsl:with-param>
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<xsl:template name ="CreateMedia">
    <xsl:param name="CurrentIndex"></xsl:param>
    <xsl:param name="LastIndex"></xsl:param>
    <xsl:if test="$CurrentIndex &lt;=  $LastIndex">
        <xsl:variable name="Node" select="/Interaction/node[@id=concat('Node',$CurrentIndex)]"></xsl:variable>
        <xsl:variable name="ObjectType" select="/Interaction/node[@id=concat('Select Object Type',$CurrentIndex)]"></xsl:variable>
        <!--<xsl:value-of select="$ObjectType"></xsl:value-of>-->
        <!--<xsl:value-of select="$CurrentIndex"></xsl:value-of>-->
        <xsl:if test ="$ObjectType='Button'">
            <xsl:call-template name="CreateMediaButton">
                <xsl:with-param name="controlId" select ="concat('MediaButton',$CurrentIndex)"></xsl:with-param>
                <xsl:with-param name="top" select ="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                <xsl:with-param name="left" select ="substring-before($Node,'$')"></xsl:with-param>
                <xsl:with-param name="width" select ="substring-before(substring-after(substring-after($Node,'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="height" select ="substring-before(substring-after(substring-after(substring-after($Node,'$'),'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                <xsl:with-param name="Index" select ="$CurrentIndex"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test ="$ObjectType='Text'">
            <xsl:call-template name="DisplayMediaText">
                <xsl:with-param name="controlId" select="concat('MediaText',$CurrentIndex)"></xsl:with-param>
                <xsl:with-param name="text" select="/Interaction/node[@id=concat('Set Text',$CurrentIndex)]"></xsl:with-param>
                <xsl:with-param name="top" select="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                <xsl:with-param name="left" select="substring-before($Node,'$')"></xsl:with-param>
                <xsl:with-param name="width" select="substring-before(substring-after(substring-after($Node,'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($Node,'$'),'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="overflow" select="'hidden'"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test ="$ObjectType='Image'">
            <xsl:variable name ="mediaImage" select ="/Interaction/node[@id=concat('Set Image',$CurrentIndex)]"></xsl:variable>
            <xsl:if test="$mediaImage != ''">
                <xsl:call-template name="DisplayMediaImage">
                    <xsl:with-param name="controlId" select="concat('MediaImage',$CurrentIndex)"></xsl:with-param>
                    <xsl:with-param name="path" select="$mediaImage"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($Node,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="substring-before(substring-after(substring-after($Node,'$'),'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($Node,'$'),'$'),'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
        </xsl:if>
        <xsl:if test ="$ObjectType='Video'">
            <xsl:variable name="VideoSize" select="/Interaction/node[@id=concat('Set Video Size',$CurrentIndex)]"></xsl:variable>
            <xsl:if test ="$VideoSize='Small'">
                <xsl:call-template name="DisplayVideo">
                    <xsl:with-param name="controlId" select ="concat('MediaVideo',$CurrentIndex)"></xsl:with-param>
                    <xsl:with-param name="path" select="/Interaction/node[@id=concat('Set Video',$CurrentIndex)]"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($Node,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="number($TargetViewSize_Factor)*180"></xsl:with-param>
                    <xsl:with-param name="height" select="number($TargetViewSize_Factor)*170" />
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    <xsl:with-param name="autoPlay" select ="'true'"></xsl:with-param>
                    <xsl:with-param name="backgroundColor" select="/Interaction/node[@id=concat('Video Skin Background Color',$CurrentIndex)]"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
            <xsl:if test ="$VideoSize='Medium'">
                <xsl:call-template name="DisplayVideo">
                    <xsl:with-param name="controlId" select ="concat('MediaVideo',$CurrentIndex)"></xsl:with-param>
                    <xsl:with-param name="path" select="/Interaction/node[@id=concat('Set Video',$CurrentIndex)]"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($Node,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="number($TargetViewSize_Factor)*260"></xsl:with-param>
                    <xsl:with-param name="height" select="number($TargetViewSize_Factor)*237"></xsl:with-param>
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    <xsl:with-param name="autoPlay" select ="'true'"></xsl:with-param>
                    <xsl:with-param name="backgroundColor" select="/Interaction/node[@id=concat('Video Skin Background Color',$CurrentIndex)]"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
            <xsl:if test ="$VideoSize='Large'">
                <xsl:call-template name="DisplayVideo">
                    <xsl:with-param name="controlId" select ="concat('MediaVideo',$CurrentIndex)"></xsl:with-param>
                    <xsl:with-param name="path" select="/Interaction/node[@id=concat('Set Video',$CurrentIndex)]"></xsl:with-param>
                    <xsl:with-param name="top" select="substring-before(substring-after($Node,'$'),'$')"></xsl:with-param>
                    <xsl:with-param name="left" select="substring-before($Node,'$')"></xsl:with-param>
                    <xsl:with-param name="width" select="number($TargetViewSize_Factor)*421"></xsl:with-param>
                    <xsl:with-param name="height" select="number($TargetViewSize_Factor)*371"></xsl:with-param>
                    <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                    <xsl:with-param name="autoPlay" select ="'true'"></xsl:with-param>
                    <xsl:with-param name="backgroundColor" select="/Interaction/node[@id=concat('Video Skin Background Color',$CurrentIndex)]"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
        </xsl:if>
        <xsl:call-template name="CreateMedia">
            <xsl:with-param name="CurrentIndex" select="$CurrentIndex+1"></xsl:with-param>
            <xsl:with-param name="LastIndex" select="$LastIndex"></xsl:with-param>
        </xsl:call-template>
    </xsl:if>
</xsl:template>
<xsl:template name="CreateMediaButton">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name ="position"></xsl:param>
    <xsl:param name="Index"></xsl:param>
    <!-- button shape-->
    <xsl:variable name="ButtonShape" select="/Interaction/node[@id=concat('Button Template',$Index)]"></xsl:variable>
    <xsl:variable name="ButtonBackgroundColor" select="/Interaction/node[@id=concat('Button Background Color',$Index)]"></xsl:variable>
    <xsl:variable name ="ActionType" select ="/Interaction/node[@id=concat('Button Action Type',$Index)]"></xsl:variable>
    <xsl:variable name="ButtonLabelType" select="/Interaction/node[@id=concat('Select Button Label Type',$Index)]"></xsl:variable>
    <xsl:variable name="colorValue">
        <xsl:call-template name="ReplaceText">
            <xsl:with-param name="text" select="$ButtonBackgroundColor" />
            <xsl:with-param name="replace" select="'0x'" />
            <xsl:with-param name="by" select="'#'" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="SetBorder">
        <xsl:choose >
            <xsl:when test ="$ButtonLabelType='Button Text'">
                <xsl:value-of select="1" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="SetBackgroundImage">
        <xsl:choose >
            <xsl:when test ="$ButtonLabelType='Button Text'">
                <xsl:value-of select="$colorValue" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'Transparent'" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:choose>
        <xsl:when test ="$ButtonShape='Rounded Rectangle Button'">
            <xsl:choose>
                <xsl:when test ="$ActionType='Link'">
                    <xsl:variable name="ButtonPopupLink" select="/Interaction/node[@id=concat('Link',$Index)]"></xsl:variable>
                    <button id="{$controlId}" style="border:{$SetBorder};z-index:740;cursor:pointer;border-color:{$colorValue};background-Color:{$SetBackgroundImage};border-radius:8px;position: {$position}; left: {$left}px; top: {$top}px; width: {$width}px; height: {$height}px; display:block;" onClick="OpenWebLink('{$ButtonPopupLink}')" >
                        <xsl:call-template name="CreateMediaButtonCaption">
                            <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                            <xsl:with-param name ="width" select ="$width"></xsl:with-param>
                            <xsl:with-param name ="height" select ="$height"></xsl:with-param>
                        </xsl:call-template>
                    </button>
                </xsl:when>
                <xsl:otherwise>
                    <button id="{$controlId}" style="border:{$SetBorder};z-index:740;cursor:pointer;border-color:{$colorValue};background-Color:{$SetBackgroundImage};border-radius:8px;position: {$position}; left: {$left}px; top: {$top}px; width: {$width}px; height: {$height}px; display:block;" onClick="OpenButtonPopup({$Index})">
                        <xsl:call-template name="CreateMediaButtonCaption">
                            <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                            <xsl:with-param name ="width" select ="$width"></xsl:with-param>
                            <xsl:with-param name ="height" select ="$height"></xsl:with-param>
                        </xsl:call-template>
                    </button>
                    <xsl:call-template name="CreateMediaButtonActionEvent">
                        <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
            <xsl:choose>
                <xsl:when test ="$ActionType='Link'">
                    <xsl:variable name="ButtonPopupLink" select="/Interaction/node[@id=concat('Link',$Index)]"></xsl:variable>
                    <button id="{$controlId}" style="border:{$SetBorder};z-index:740;cursor:pointer;border-color:{$colorValue};background-Color:{$SetBackgroundImage};position: {$position}; left: {$left}px; top: {$top}px; width: {$width}px; height: {$height}px; display:block;" onClick="OpenWebLink('{$ButtonPopupLink}')" >
                        <xsl:call-template name="CreateMediaButtonCaption">
                            <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                            <xsl:with-param name ="width" select ="$width"></xsl:with-param>
                            <xsl:with-param name ="height" select ="$height"></xsl:with-param>
                        </xsl:call-template>
                    </button>
                </xsl:when>
                <xsl:otherwise>
                    <button id="{$controlId}" style="border:{$SetBorder};z-index:740;cursor:pointer;border-color:{$colorValue};background-Color:{$SetBackgroundImage};position: {$position}; left: {$left}px; top: {$top}px; width: {$width}px; height: {$height}px; display:block;" onClick="OpenButtonPopup({$Index})">
                        <xsl:call-template name="CreateMediaButtonCaption">
                            <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                            <xsl:with-param name ="width" select ="$width"></xsl:with-param>
                            <xsl:with-param name ="height" select ="$height"></xsl:with-param>
                        </xsl:call-template>
                    </button>
                    <xsl:call-template name="CreateMediaButtonActionEvent">
                        <xsl:with-param name ="Index" select ="$Index"></xsl:with-param>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="CreateMediaButtonCaption">
    <xsl:param name="Index"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:variable name="ButtonLabelType" select="/Interaction/node[@id=concat('Select Button Label Type',$Index)]"></xsl:variable>
    <xsl:choose >
        <xsl:when test ="$ButtonLabelType='Button Text'">
            <xsl:variable name="controlId" select="concat('MediaButtonText',$Index)"></xsl:variable>
            <xsl:variable name="text" select="/Interaction/node[@id=concat('Button Text',$Index)]"></xsl:variable>
            <xsl:variable name="top" select="0"></xsl:variable>
            <xsl:variable name="left" select="0"></xsl:variable>
            <xsl:variable name="textWidth" select="number($width)-10"></xsl:variable>
            <xsl:variable name="textHeight" select="number($height)-5"></xsl:variable>
            <xsl:variable name="overflow" select="'hidden'"></xsl:variable>
            <div id="{$controlId}" class="txtControl" style="position:relative;top:{$top}px;left:{$left}px;width:{$textWidth}px;height:{$textHeight}px;overflow:{$overflow};margin:0 0 0 0 0;padding-right:5px;z-index:auto">
                <xsl:value-of select="$text" disable-output-escaping="yes" />
            </div>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name ="mediaImage" select ="/Interaction/node[@id=concat('Button Image',$Index)]"></xsl:variable>
            <xsl:if test ="$mediaImage != ''">
                <xsl:call-template name="DisplayImage">
                    <xsl:with-param name="controlId" select="concat('MediaButtonImage',$Index)"></xsl:with-param>
                    <xsl:with-param name="path" select="$mediaImage"></xsl:with-param>
                    <xsl:with-param name="top" select="-3"></xsl:with-param>
                    <xsl:with-param name="left" select="-9"></xsl:with-param>
                    <xsl:with-param name="width" select="number($width)"></xsl:with-param>
                    <xsl:with-param name="height" select="number($height)"></xsl:with-param>
                    <xsl:with-param name="position" select="'relative'"></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="CreateMediaButtonActionEvent">
    <xsl:param name="Index"></xsl:param>
    <xsl:variable name ="ActionType" select ="/Interaction/node[@id=concat('Button Action Type',$Index)]"></xsl:variable>
    <xsl:variable name ="backgroundColor" select ="/Interaction/node[@id=concat('Set Popup Background Color',$Index)]"></xsl:variable>
    <xsl:variable name="colorValue">
        <xsl:call-template name="ReplaceText">
            <xsl:with-param name="text" select="$backgroundColor" />
            <xsl:with-param name="replace" select="'0x'" />
            <xsl:with-param name="by" select="'#'" />
        </xsl:call-template>
    </xsl:variable>
    <xsl:variable name ="ButtonPopupDisplayText" select ="/Interaction/node[@id='ButtonPopupDisplayText']"></xsl:variable>
    <xsl:variable name ="ButtonPopupVideo" select ="/Interaction/node[@id='ButtonPopupVideo']"></xsl:variable>
    <xsl:variable name ="ButtonPopupText" select ="/Interaction/node[@id='ButtonPopupText']"></xsl:variable>
    <xsl:variable name ="ButtonPopupImage" select ="/Interaction/node[@id='ButtonPopupImage']"></xsl:variable>
    <xsl:variable name ="ButtonPopupPosition" select ="/Interaction/node[@id='ButtonPopupPosition']"></xsl:variable>
    <xsl:variable name="topButtonPopupPosition" select ="substring-before(substring-after($ButtonPopupPosition,'$'),'$')" />
    <xsl:variable name="leftButtonPopupPosition" select ="substring-before($ButtonPopupPosition,'$')" />
    <xsl:variable name="widthButtonPopupPosition" select ="substring-before(substring-after(substring-after($ButtonPopupPosition,'$'),'$'),'$')" />
    <xsl:variable name="heightButtonPopupPosition" select ="substring-before(substring-after(substring-after(substring-after($ButtonPopupPosition,'$'),'$'),'$'),'$')" />
    <xsl:variable name ="CloseButtonPosition" select ="/Interaction/node[@id='CloseButtonPosition']"></xsl:variable>
    <xsl:variable name="topCloseButtonPosition" select ="substring-before(substring-after($CloseButtonPosition,'$'),'$')" />
    <xsl:variable name="leftCloseButtonPosition" select ="substring-before($CloseButtonPosition,'$')" />
    <xsl:variable name="widthCloseButtonPosition" select ="substring-before(substring-after(substring-after($CloseButtonPosition,'$'),'$'),'$')" />
    <xsl:variable name="heightCloseButtonPosition" select ="substring-before(substring-after(substring-after(substring-after($CloseButtonPosition,'$'),'$'),'$'),'$')" />
    <!--
          Modified by Priti
          22 Aug 2013
          Purpose:To resolve issue 6083
    -->
    <div id="Stage{$Index}" style="z-Index:800;display:none;position:absolute;width:{$viewTargetWidth}px;height:{$viewTargetHeight}px;top:0px;left:0px"></div>
    <div id="ButtonPopup{$Index}" style="top:{$topButtonPopupPosition}px;left:{$leftButtonPopupPosition}px;height:{$heightButtonPopupPosition}px;width:{$widthButtonPopupPosition}px;border-color:#000000;background-Color:{$colorValue};z-Index:800;display:none;position:absolute;">
        <img src="../HTML5/closebutton.jpg" id="ButtonPopupClose{$Index}" alt="" style="top:{$topCloseButtonPosition}px;left:{$leftCloseButtonPosition}px;height:{$heightCloseButtonPosition}px;width:{$widthCloseButtonPosition}px;z-Index:10;cursor:pointer;position:absolute" onclick="CloseButtonPopup({$Index})" />
        <xsl:call-template name="DisplayText">
            <xsl:with-param name="controlId" select="concat('ButtonPopupTitle',$Index)"></xsl:with-param>
            <xsl:with-param name="text" select="/Interaction/node[@id=concat('Set Popup Title',$Index)]"></xsl:with-param>
            <xsl:with-param name="top" select="substring-before(substring-after($ButtonPopupDisplayText,'$'),'$')"></xsl:with-param>
            <xsl:with-param name="left" select="substring-before($ButtonPopupDisplayText,'$')"></xsl:with-param>
            <xsl:with-param name="width" select="substring-before(substring-after(substring-after($ButtonPopupDisplayText,'$'),'$'),'$')"></xsl:with-param>
            <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($ButtonPopupDisplayText,'$'),'$'),'$'),'$')"></xsl:with-param>
            <xsl:with-param name="overflow" select="'hidden'"></xsl:with-param>
        </xsl:call-template>
        <xsl:if test ="$ActionType='Popup Video'">
            <xsl:call-template name="DisplayButtonPopupVideo">
                <xsl:with-param name="controlId" select ="concat('ButtonPopupVideo',$Index)"></xsl:with-param>
                <xsl:with-param name="videoId" select ="concat('ButtonPopupVideoTagId',$Index)"></xsl:with-param>
                <xsl:with-param name="path" select="/Interaction/node[@id=concat('Set Popup Video',$Index)]"></xsl:with-param>
                <xsl:with-param name="top" select="substring-before(substring-after($ButtonPopupVideo,'$'),'$')"></xsl:with-param>
                <xsl:with-param name="left" select="substring-before($ButtonPopupVideo,'$')"></xsl:with-param>
                <xsl:with-param name="width" select="substring-before(substring-after(substring-after($ButtonPopupVideo,'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($ButtonPopupVideo,'$'),'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="position" select="'absolute'"></xsl:with-param>
                <xsl:with-param name="backgroundColor" select="$colorValue"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test ="$ActionType='Popup Text'">
            <xsl:call-template name="DisplayButtonPopupText">
                <xsl:with-param name="Id" select="$Index"></xsl:with-param>
                <xsl:with-param name="text" select="/Interaction/node[@id=concat('Set Popup Text',$Index)]"></xsl:with-param>
                <xsl:with-param name="top" select="substring-before(substring-after($ButtonPopupText,'$'),'$')"></xsl:with-param>
                <xsl:with-param name="left" select="substring-before($ButtonPopupText,'$')"></xsl:with-param>
                <xsl:with-param name="width" select="substring-before(substring-after(substring-after($ButtonPopupText,'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($ButtonPopupText,'$'),'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="overflow" select="'hidden'"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test ="$ActionType='Popup Image'">
            <xsl:call-template name="DisplayImage">
                <xsl:with-param name="controlId" select="concat('ButtonPopupImage',$Index)"></xsl:with-param>
                <xsl:with-param name="path" select="/Interaction/node[@id=concat('Set Popup Image',$Index)]"></xsl:with-param>
                <xsl:with-param name="top" select="substring-before(substring-after($ButtonPopupImage,'$'),'$')"></xsl:with-param>
                <xsl:with-param name="left" select="substring-before($ButtonPopupImage,'$')"></xsl:with-param>
                <xsl:with-param name="width" select="substring-before(substring-after(substring-after($ButtonPopupImage,'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="height" select="substring-before(substring-after(substring-after(substring-after($ButtonPopupImage,'$'),'$'),'$'),'$')"></xsl:with-param>
                <xsl:with-param name="position" select="'relative'"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </div>
</xsl:template>
<xsl:template name="DisplayButtonPopupVideo">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="videoId"></xsl:param>
    <xsl:param name="path"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="position"></xsl:param>
    <xsl:param name="backgroundColor"></xsl:param>
    <xsl:variable name="videoPath" select="'./'" />
    <xsl:choose>
        <xsl:when test ="$backgroundColor=''">
            <div id="{$controlId}" style="z-Index:100;visibility:visible;position:{$position};top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px">
                <video id="{$videoId}" src="{concat($videoPath,$path)}" controls="controls" width="{$width}" height="{$height}">
            your browser does not support the video tag
          </video>
            </div>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="colorValue">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="$backgroundColor" />
                    <xsl:with-param name="replace" select="'0x'" />
                    <xsl:with-param name="by" select="'#'" />
                </xsl:call-template>
            </xsl:variable>
            <div id="{$controlId}" style="z-Index:100;background-Color:{$colorValue};visibility:visible;position:{$position};top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px">
                <video id="{$videoId}" src="{concat($videoPath,$path)}" controls="controls" width="{$width}" height="{$height}">
            your browser does not support the video tag
          </video>
            </div>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name="DisplayMediaText">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="text"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="overflow"></xsl:param>
    <div id="{$controlId}" class="txtControl" style="z-Index:100;position:absolute;top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px;overflow:{$overflow};margin:0 0 0 0 0;">
        <xsl:value-of select="$text" disable-output-escaping="yes" />
    </div>
</xsl:template>
<xsl:template name="DisplayMediaImage">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="path"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="position"></xsl:param>
    <xsl:variable name="picPath" select="'../Pics/'" />
    <xsl:variable name="audioPath" select="'../Waves/'" />
    <img src="{concat($picPath,$path)}" id="{$controlId}" alt="" style="z-Index:100;position:{$position};top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px; background-repeat: no-repeat;margin:0 0 0 0 0;border-style:none" />
</xsl:template>
<xsl:template name="DisplayVideo">
    <xsl:param name="controlId"></xsl:param>
    <xsl:param name="path"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="position"></xsl:param>
    <xsl:param name="autoPlay"></xsl:param>
    <xsl:param name="backgroundColor"></xsl:param>
    <xsl:variable name="videoPath" select="'./'" />
    <xsl:choose>
        <xsl:when test ="$backgroundColor=''">
            <div id="{$controlId}" style="z-Index:700;visibility:visible;position:{$position};top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px;overflow:hidden;">
                <video src="{concat($videoPath,$path)}" autoplay="{$autoPlay}" controls="controls" width="{$width}" height="{$height}">
            your browser does not support the video tag
          </video>
            </div>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="colorValue">
                <xsl:call-template name="ReplaceText">
                    <xsl:with-param name="text" select="$backgroundColor" />
                    <xsl:with-param name="replace" select="'0x'" />
                    <xsl:with-param name="by" select="'#'" />
                </xsl:call-template>
            </xsl:variable>
            <div id="{$controlId}" style="z-Index:740;background-Color:{$colorValue};visibility:visible;position:{$position};top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px;overflow:hidden;">
                <video src="{concat($videoPath,$path)}" autoplay="{$autoPlay}" controls="controls" width="{$width}" height="{$height}">
            your browser does not support the video tag
          </video>
            </div>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template name ="CheckMuteOtherAudios">
    <xsl:variable name="nodes" select="/Interaction/node[@id='Number of Nodes']" />
    <xsl:call-template name ="LoopAdditionalMedia">
        <xsl:with-param name ="currentIndex" select ="1"></xsl:with-param>
        <xsl:with-param name ="lastIndex" select ="$nodes"></xsl:with-param>
    </xsl:call-template>
</xsl:template>
<xsl:template name ="LoopAdditionalMedia">
    <xsl:param name="currentIndex"></xsl:param>
    <xsl:param name="lastIndex"></xsl:param>
    <xsl:if test="$currentIndex &lt;=  $lastIndex">
        <xsl:variable name="objectType" select="/Interaction/node[@id=concat('Select Object Type',$currentIndex)]" />
        <xsl:choose>
            <xsl:when test ="$objectType='Video'">
                <xsl:variable name="muteAudio" select="/Interaction/node[@id=concat('Mute other Audio',$currentIndex)]" />
                <xsl:choose>
                    <xsl:when test ="string($muteAudio) = 'True'">
              muteOtherAudio = true;
            </xsl:when>
                    <xsl:otherwise>
              muteOtherAudio = false;
            </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name ="LoopAdditionalMedia">
                    <xsl:with-param name ="currentIndex" select ="$currentIndex+1"></xsl:with-param>
                    <xsl:with-param name ="lastIndex" select ="$lastIndex"></xsl:with-param>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:if>
</xsl:template>
<!-- ************************************************************************************************************************************** -->
<xsl:template name="DisplayButtonPopupText">
    <xsl:param name="Id"></xsl:param>
    <xsl:param name="text"></xsl:param>
    <xsl:param name="top"></xsl:param>
    <xsl:param name="left"></xsl:param>
    <xsl:param name="width"></xsl:param>
    <xsl:param name="height"></xsl:param>
    <xsl:param name="overflow"></xsl:param>
    <div id="ButtonPopupText{$Id}" class="txtControl" style="position:absolute;top:{$top}px;left:{$left}px;width:{$width}px;height:{$height}px;overflow:{$overflow};margin:0 0 0 0 0;z-index:auto">
        <div id="ButtonPopupScroller{$Id}" class="Scroller-Container">
            <div id="ButtonPopupInnerText{$Id}" style="word-wrap:break-word;position:absolute;top:2px;left:2px;width:{number($width)-35}px">
                <xsl:value-of select="$text" disable-output-escaping="yes" />
            </div>
        </div>
        <!--tanaji 12-6-13 added border:none for gtbtextImgarrowUp gtbtextImgarrowDown-->
        <a href="#" id="gtbTextArrowUp{$Id}" onmouseover="gtbTextScroller.startScroll(0, 5);" onmouseout="gtbTextScroller.stopScroll();" style="z-Index:30;position:absolute; left:{number($width)-20*$TargetViewSize_Factor}px; top: 0px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
            <img id="gtbtextImgUp" src="../HTML5/arrow_top.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none" />
        </a>
        <a href="#" id="gtbTextArrowDown{$Id}" onmouseover="gtbTextScroller.startScroll(0, -5);" onmouseout="gtbTextScroller.stopScroll();" style="z-Index:30;position:absolute; left:{number($width)-20*$TargetViewSize_Factor}px; top:{number($height)-20*$TargetViewSize_Factor}px;width:{$scrollWidth}px;height:{$scrollHeight}px;display:none;">
            <img id="gtbtextImgDown" src="../HTML5/arrow_down.png" alt="" style="width:{$scrollWidth}px;height:{$scrollHeight}px;border:none"/>
        </a>
    </div>
</xsl:template>
<!-- Global functions Ends -->
