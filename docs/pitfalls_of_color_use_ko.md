# 색상 사용의 일반적인 함정 {#color-pitfalls}

색상은 데이터 시각화를 향상시키는 매우 효과적인 도구가 될 수 있습니다. 동시에 잘못된 색상 선택은 그렇지 않으면 훌륭했을 시각화를 망칠 수 있습니다. 색상은 목적에 맞게 적용되어야 하며 명확해야 하고 주의를 산만하게 해서는 안 됩니다.

## 너무 많거나 관련 없는 정보 인코딩

일반적인 실수 중 하나는 너무 많은 다른 항목을 다른 색상으로 인코딩하여 색상에 너무 큰 작업을 맡기는 것입니다. 예를 들어 그림 \@ref(fig:popgrowth-vs-popsize-colored)를 생각해 보십시오. 이 그림은 미국 50개 주 전체와 컬럼비아 특별구의 인구 증가율 대 인구 규모를 보여줍니다. 각 주에 고유한 색상을 지정하여 각 주를 식별하려고 했습니다. 그러나 결과는 그다지 유용하지 않습니다. 플롯과 범례의 색상 점을 보고 어떤 주가 어떤 주인지 추측할 수 있지만 두 가지를 일치시키려고 앞뒤로 이동하는 데 많은 노력이 필요합니다. 단순히 너무 많은 다른 색상이 있으며 그중 많은 색상이 서로 매우 유사합니다. 많은 노력으로 정확히 어떤 주가 어떤 주인지 알아낼 수 있더라도 이 시각화는 색칠의 목적을 무색하게 만듭니다. 우리는 그림을 향상시키고 읽기 쉽게 만들기 위해 색상을 사용해야 하며 시각적 퍼즐을 만들어 데이터를 모호하게 만들어서는 안 됩니다.

(ref:popgrowth-vs-popsize-colored) 2000년부터 2010년까지의 인구 증가율 대 2000년 인구 규모, 미국 50개 주 전체 및 컬럼비아 특별구. 모든 주는 다른 색상으로 표시됩니다. 주가 너무 많기 때문에 범례의 색상을 산점도의 점과 일치시키기가 매우 어렵습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/popgrowth-vs-popsize-colored-1.png" alt="(ref:popgrowth-vs-popsize-colored)" width="576" />
<p class="caption">(\#fig:popgrowth-vs-popsize-colored)(ref:popgrowth-vs-popsize-colored)</p>
</div>

일반적으로 정성적 색상 척도는 색칠해야 할 범주가 3~5개일 때 가장 잘 작동합니다. 범주가 8~10개 이상이 되면 색상을 범주와 일치시키는 작업이 너무 부담스러워 유용하지 않게 됩니다. 비록 원칙적으로 색상이 구별될 만큼 충분히 다르더라도 말입니다. 그림 \@ref(fig:popgrowth-vs-popsize-colored)의 데이터 세트의 경우 각 주의 지리적 지역을 나타내는 데만 색상을 사용하고 직접 레이블링, 즉 데이터 포인트 옆에 적절한 텍스트 레이블을 배치하여 개별 주를 식별하는 것이 가장 좋습니다(그림 \@ref(fig:popgrowth-vs-popsize-bw)). 그림이 너무 복잡해지지 않도록 모든 개별 주에 레이블을 지정할 수는 없지만 이 그림에는 직접 레이블링이 올바른 선택입니다. 일반적으로 이러한 그림의 경우 모든 단일 데이터 포인트에 레이블을 지정할 필요는 없습니다. 예를 들어 그림과 함께 제공될 텍스트에서 특별히 언급하고 싶은 주 집합과 같이 대표적인 하위 집합에 레이블을 지정하는 것으로 충분합니다. 독자가 전체 데이터에 액세스할 수 있도록 하려면 항상 기본 데이터를 표로 제공할 수도 있습니다.

(ref:popgrowth-vs-popsize-bw) 2000년부터 2010년까지의 인구 증가율 대 2000년 인구 규모. 그림 \@ref(fig:popgrowth-vs-popsize-colored)와 달리 이제 지역별로 주를 색칠하고 일부 주에 직접 레이블을 지정했습니다. 그림이 너무 복잡해지는 것을 방지하기 위해 대부분의 주는 레이블을 지정하지 않았습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/popgrowth-vs-popsize-bw-1.png" alt="(ref:popgrowth-vs-popsize-bw)" width="754.285714285714" />
<p class="caption">(\#fig:popgrowth-vs-popsize-bw)(ref:popgrowth-vs-popsize-bw)</p>
</div>


<div class="rmdtip">
<p>약 8개 이상의 범주 항목을 구별해야 하는 경우 색상 대신 직접 레이블링을 사용하십시오.</p>
</div>

두 번째 일반적인 문제는 색상에 대한 명확한 목적 없이 단순히 색칠을 위해 색칠하는 것입니다. 예를 들어 그림 \@ref(fig:popgrowth-US)의 변형인 그림 \@ref(fig:popgrowth-US-rainbow)를 생각해 보십시오. 그러나 이제 막대를 지리적 지역별로 색칠하는 대신 각 막대에 고유한 색상을 지정하여 전체적으로 막대가 무지개 효과를 내도록 했습니다. 이것은 흥미로운 시각적 효과처럼 보일 수 있지만 데이터에 대한 새로운 통찰력을 제공하거나 그림을 더 쉽게 읽을 수 있도록 만들지는 않습니다.

(ref:popgrowth-US-rainbow) 2000년부터 2010년까지 미국의 인구 증가. 주의 무지개 색칠은 아무런 목적도 없으며 주의를 산만하게 합니다. 또한 색상이 지나치게 채도가 높습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/popgrowth-US-rainbow-1.png" alt="(ref:popgrowth-US-rainbow)" width="576" />
<p class="caption">(\#fig:popgrowth-US-rainbow)(ref:popgrowth-US-rainbow)</p>
</div>

불필요한 여러 색상 사용 외에도 그림 \@ref(fig:popgrowth-US-rainbow)에는 두 번째 색상 관련 문제가 있습니다. 선택한 색상이 너무 채도가 높고 강렬합니다. 이러한 색상 강도는 그림을 보기 어렵게 만듭니다. 예를 들어 주 이름 바로 옆에 있는 크고 강하게 색칠된 영역에 시선이 끌리지 않고 주 이름을 읽기가 어렵습니다. 마찬가지로 막대의 끝점을 기본 격자선과 비교하기 어렵습니다.

<div class="rmdtip">
<p>지나치게 채도가 높은 색상의 큰 채워진 영역을 피하십시오. 독자가 그림을 주의 깊게 검토하기 어렵게 만듭니다.</p>
</div>


## 데이터 값을 인코딩하기 위해 비단조 색상 척도 사용

챕터 \@ref(color-basics)에서는 데이터 값을 나타낼 수 있는 순차적 색상 척도를 설계하기 위한 두 가지 중요한 조건을 나열했습니다. 색상은 어떤 데이터 값이 다른 값보다 크거나 작은지를 명확하게 나타내야 하며 색상 간의 차이는 데이터 값 간의 해당 차이를 시각화해야 합니다. 불행히도 매우 인기 있는 척도를 포함하여 여러 기존 색상 척도가 이러한 조건 중 하나 또는 둘 다를 위반합니다. 가장 인기 있는 이러한 척도는 무지개 척도입니다(그림 \@ref(fig:rainbow-desaturated)). 이 척도는 색상 스펙트럼의 모든 가능한 색상을 통과합니다. 이는 척도가 사실상 원형임을 의미합니다. 시작과 끝의 색상은 거의 동일합니다(어두운 빨간색). 이러한 두 색상이 플롯에서 서로 옆에 표시되면 최대로 떨어져 있는 데이터 값을 나타내는 것으로 본능적으로 인식하지 못합니다. 또한 척도는 매우 비단조적입니다. 색상이 매우 느리게 변하는 영역과 색상이 빠르게 변하는 영역이 있습니다. 이러한 단조성 부족은 회색조로 색상 척도를 보면 특히 분명해집니다(그림 \@ref(fig:rainbow-desaturated)). 척도는 중간 어두움에서 밝음으로, 매우 어두움으로, 다시 중간 어두움으로 이동하며 밝기가 거의 변하지 않는 긴 구간과 밝기가 크게 변하는 비교적 좁은 구간이 있습니다.

(ref:rainbow-desaturated) 무지개 색상 척도는 매우 비단조적입니다. 이는 색상을 회색 값으로 변환하면 명확하게 보입니다. 왼쪽에서 오른쪽으로 척도는 중간 정도의 어두움에서 밝음으로, 매우 어두움으로, 다시 중간 정도의 어두움으로 이동합니다. 또한 밝기의 변화는 매우 불균일합니다. 척도의 가장 밝은 부분(노란색, 밝은 녹색, 청록색에 해당)은 전체 척도의 거의 3분의 1을 차지하는 반면 가장 어두운 부분(어두운 파란색에 해당)은 척도의 좁은 영역에 집중되어 있습니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/rainbow-desaturated-1.png" alt="(ref:rainbow-desaturated)" width="685.714285714286" />
<p class="caption">(\#fig:rainbow-desaturated)(ref:rainbow-desaturated)</p>
</div>

실제 데이터 시각화에서 무지개 척도는 데이터 특징을 모호하게 만들거나 데이터의 임의적인 측면을 강조하는 경향이 있습니다(그림 \@ref(fig:map-Texas-rainbow)). 덧붙여서 무지개 척도의 색상도 지나치게 채도가 높습니다. 그림 \@ref(fig:map-Texas-rainbow)를 오랫동안 보면 상당히 불편할 수 있습니다.


(ref:map-Texas-rainbow) 텍사스 카운티에서 백인으로 식별되는 사람들의 비율. 무지개 색상 척도는 데이터의 임의적인 특징을 강조하는 경향이 있으므로 연속적인 데이터 값을 시각화하는 데 적합한 척도가 아닙니다. 여기서는 인구의 약 75%가 백인으로 식별되는 카운티를 강조합니다. 데이터 출처: 2010년 미국 인구 조사

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/map-Texas-rainbow-1.png" alt="(ref:map-Texas-rainbow)" width="576" />
<p class="caption">(\#fig:map-Texas-rainbow)(ref:map-Texas-rainbow)</p>
</div>


## 색각 이상을 고려하지 않은 디자인

시각화를 위해 색상을 선택할 때마다 독자 중 상당수가 어떤 형태의 색각 이상(즉, 색맹)을 가지고 있을 수 있다는 점을 명심해야 합니다. 이러한 독자는 대부분의 다른 사람들에게는 명확하게 다른 색상을 구별하지 못할 수 있습니다. 그러나 색각 이상이 있는 사람이 문자 그대로 어떤 색상도 볼 수 없는 것은 아닙니다. 대신 일반적으로 특정 유형의 색상, 예를 들어 빨간색과 녹색(적록 색각 이상) 또는 파란색과 녹색(청황 색각 이상)을 구별하는 데 어려움을 겪습니다. 이러한 이상의 기술 용어는 적록 변형의 경우 각각 녹색 또는 빨간색을 인지하는 데 어려움을 겪는 중색약/중색맹 및 적색약/적색맹이고 청황 변형의 경우 파란색을 인지하는 데 어려움을 겪는 삼색약/삼색맹입니다. "이상"으로 끝나는 용어는 해당 색상 인식의 일부 손상을 의미하고 "맹"으로 끝나는 용어는 해당 색상 인식의 완전한 부재를 의미합니다. 남성의 약 8%와 여성의 0.5%가 어떤 형태의 색각 이상을 앓고 있으며 중색약이 가장 흔한 형태인 반면 삼색약은 비교적 드뭅니다.

챕터 \@ref(color-basics)에서 논의했듯이 데이터 시각화에 사용되는 색상 척도에는 순차적 척도, 발산형 척도, 정성적 척도의 세 가지 기본 유형이 있습니다. 이 세 가지 중 순차적 척도는 일반적으로 색각 이상(cvd)이 있는 사람에게 문제를 일으키지 않습니다. 제대로 설계된 순차적 척도는 어두운 색에서 밝은 색으로의 연속적인 그라데이션을 나타내야 하기 때문입니다. 그림 \@ref(fig:heat-cvd-sim)은 그림 \@ref(fig:sequential-scales)의 Heat 척도를 중색약, 적색약, 삼색약의 시뮬레이션 버전으로 보여줍니다. 이러한 cvd 시뮬레이션 척도 중 어느 것도 원본과 같아 보이지는 않지만 모두 어두운 색에서 밝은 색으로의 명확한 그라데이션을 나타내며 데이터 값의 크기를 전달하는 데 모두 잘 작동합니다.

(ref:heat-cvd-sim) 어두운 빨간색에서 밝은 노란색으로 변하는 순차적 색상 척도 Heat의 색각 이상(cvd) 시뮬레이션. 왼쪽에서 오른쪽으로, 위에서 아래로 원본 척도와 중색약, 적색약, 삼색약 시뮬레이션에서 본 척도를 볼 수 있습니다. 세 가지 유형의 cvd에서 특정 색상이 다르게 보이지만 각 경우에 어두운 색에서 밝은 색으로의 명확한 그라데이션을 볼 수 있습니다. 따라서 이 색상 척도는 cvd에 안전하게 사용할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/heat-cvd-sim-1.png" alt="(ref:heat-cvd-sim)" width="685.714285714286" />
<p class="caption">(\#fig:heat-cvd-sim)(ref:heat-cvd-sim)</p>
</div>

발산형 척도의 경우 인기 있는 색상 대비가 cvd에서 구별할 수 없게 될 수 있으므로 상황이 더 복잡해집니다. 특히 빨간색과 녹색은 정상적인 색각을 가진 사람들에게 가장 강한 대비를 제공하지만 중색약(중색약이 있는 사람)이나 적색약(적색약이 있는 사람)에게는 거의 구별할 수 없게 됩니다(그림 \@ref(fig:red-green-cvd-sim)). 마찬가지로 청록색 대비는 중색약과 적색약에게는 보이지만 삼색약(삼색약이 있는 사람)에게는 구별할 수 없게 됩니다(그림 \@ref(fig:blue-green-cvd-sim)).

(ref:red-green-cvd-sim) 빨강-초록 대비는 적록 색각 이상(중색약 또는 적색약)에서 구별할 수 없게 됩니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/red-green-cvd-sim-1.png" alt="(ref:red-green-cvd-sim)" width="685.714285714286" />
<p class="caption">(\#fig:red-green-cvd-sim)(ref:red-green-cvd-sim)</p>
</div>

(ref:blue-green-cvd-sim) 파랑-초록 대비는 청황 색각 이상(삼색약)에서 구별할 수 없게 됩니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/blue-green-cvd-sim-1.png" alt="(ref:blue-green-cvd-sim)" width="685.714285714286" />
<p class="caption">(\#fig:blue-green-cvd-sim)(ref:blue-green-cvd-sim)</p>
</div>

이러한 예를 통해 모든 형태의 cvd에 안전한 두 가지 대조되는 색상을 찾는 것이 거의 불가능해 보일 수 있습니다. 그러나 상황이 그렇게 심각하지는 않습니다. 원하는 특성을 가지면서도 cvd에 안전하도록 색상을 약간 수정하는 것이 종종 가능합니다. 예를 들어 그림 \@ref(fig:diverging-scales)의 ColorBrewer PiYG(분홍색에서 황록색) 척도는 정상적인 색각을 가진 사람들에게는 빨간색-녹색으로 보이지만 cvd가 있는 사람들에게는 구별 가능하게 유지됩니다(그림 \@ref(fig:PiYG-cvd-sim)).

(ref:PiYG-cvd-sim) 그림 \@ref(fig:diverging-scales)의 ColorBrewer PiYG(분홍색에서 황록색) 척도는 일반적인 색각을 가진 사람들에게는 빨간색-녹색 대비처럼 보이지만 모든 형태의 색각 이상에 대해 작동합니다. 붉은색은 실제로 분홍색(빨간색과 파란색의 혼합)이고 녹색은 노란색도 포함하기 때문에 작동합니다. 두 색상 간의 파란색 구성 요소의 차이는 중색약이나 적색약도 감지할 수 있으며 빨간색 구성 요소의 차이는 삼색약도 감지할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/PiYG-cvd-sim-1.png" alt="(ref:PiYG-cvd-sim)" width="685.714285714286" />
<p class="caption">(\#fig:PiYG-cvd-sim)(ref:PiYG-cvd-sim)</p>
</div>

정성적 척도의 경우 상황이 가장 복잡합니다. 여러 가지 다른 색상이 필요하고 모든 색상이 모든 형태의 cvd에서 서로 구별 가능해야 하기 때문입니다. 제가 이 책 전체에서 광범위하게 사용하는 선호하는 정성적 색상 척도는 이러한 문제를 해결하기 위해 특별히 개발되었습니다(그림 \@ref(fig:palette-Okabe-Ito)). 8가지 다른 색상을 제공함으로써 이 팔레트는 이산적인 색상이 있는 거의 모든 시나리오에 적합합니다. 이 장의 시작 부분에서 논의했듯이 어쨌든 플롯에서 8개 이상의 다른 항목을 색상으로 구분해서는 안 됩니다.

(ref:palette-Okabe-Ito) 모든 색각 이상을 위한 정성적 색상 팔레트[@Okabe-Ito-CUD]. 영숫자 코드는 16진수로 인코딩된 RGB 공간의 색상을 나타냅니다. 많은 플롯 라이브러리 및 이미지 조작 프로그램에서 이러한 코드를 직접 입력할 수 있습니다. 소프트웨어가 16진수를 직접 사용하지 않는 경우 표 \@ref(tab:color-codes)의 값을 사용할 수도 있습니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/palette-Okabe-Ito-1.png" alt="(ref:palette-Okabe-Ito)" width="754.285714285714" />
<p class="caption">(\#fig:palette-Okabe-Ito)(ref:palette-Okabe-Ito)</p>
</div>


표: (\#tab:color-codes) @Okabe-Ito-CUD가 개발한 색맹 친화적인 색상 척도.

이름            16진수 코드     색조     C, M, Y, K (%)   R, G, B (0-255)   R, G, B (%)
--------------  ------------ ------- ---------------- ----------------- ------------
        주황색       #E69F00     41° 0, 50, 100, 0    230, 159, 0       90, 60, 0
      하늘색       #56B4E9    202° 80, 0, 0, 0      86, 180, 233      35, 70, 90
  청록색       #009E73    164° 97, 0, 75, 0     0, 158, 115       0, 60, 50
        노란색       #F0E442     56° 10, 5, 90, 0     240, 228, 66      95, 90, 25
          파란색       #0072B2    202° 100, 50, 0, 0    0, 114, 178       0, 45, 70
     주홍색       #D55E00     27° 0, 80, 100, 0    213, 94, 0        80, 40, 0
붉은 보라색       #CC79A7    326° 10, 70, 0, 0     204, 121, 167     80, 60, 70
         검은색       #000000      -  0, 0, 0, 100     0, 0, 0           0, 0, 0

몇 가지 좋은 cvd 안전 색상 척도를 쉽게 사용할 수 있지만 마법의 총알은 아니라는 점을 인식해야 합니다. cvd 안전 척도를 사용하더라도 cvd가 있는 사람이 해독할 수 없는 그림을 만들 가능성이 매우 높습니다. 중요한 매개변수 중 하나는 색칠된 그래픽 요소의 크기입니다. 색상은 작은 영역이나 얇은 선보다 넓은 영역에 적용될 때 훨씬 쉽게 구별할 수 있습니다[@Stone_et_al_2014]. 그리고 이 효과는 cvd에서 악화됩니다(그림 \@ref(fig:colors-thin-lines)). 이 장과 챕터 \@ref(color-basics)에서 논의된 다양한 색상 디자인 고려 사항 외에도 cvd 시뮬레이션에서 색상 그림을 보고 cvd가 있는 사람에게 어떻게 보일지 파악하는 것이 좋습니다. 사용자가 임의의 그림을 cvd 시뮬레이션으로 실행할 수 있는 여러 온라인 서비스와 데스크톱 앱이 있습니다.

(ref:colors-thin-lines) 색칠된 요소는 크기가 작을수록 구별하기 어렵습니다. 왼쪽 위 패널("원본"으로 표시됨)은 네 개의 사각형, 네 개의 두꺼운 선, 네 개의 얇은 선, 네 그룹의 점을 보여주며 모두 동일한 네 가지 색상으로 색칠되어 있습니다. 시각적 요소가 작거나 얇을수록 색상을 구별하기가 더 어려워지는 것을 볼 수 있습니다. 이 문제는 cvd 시뮬레이션에서 악화되며, 여기서 색상은 큰 그래픽 요소에 대해서도 이미 구별하기가 더 어렵습니다.

<div class="figure" style="text-align: center">
<img src="pitfalls_of_color_use_files/figure-html/colors-thin-lines-1.png" alt="(ref:colors-thin-lines)" width="685.714285714286" />
<p class="caption">(\#fig:colors-thin-lines)(ref:colors-thin-lines)</p>
</div>

<div class="rmdtip">
<p>그림이 cvd가 있는 사람들에게도 효과적인지 확인하려면 특정 색상 척도에만 의존하지 마십시오. 대신 cvd 시뮬레이터에서 그림을 테스트하십시오.</p>
</div>
