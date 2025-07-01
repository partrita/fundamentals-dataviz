# 색상 척도 {#color-basics}


데이터 시각화에서 색상을 사용하는 세 가지 기본적인 경우가 있습니다. (i) 색상을 사용하여 데이터 그룹을 서로 구별할 수 있습니다. (ii) 색상을 사용하여 데이터 값을 나타낼 수 있습니다. (iii) 색상을 사용하여 강조할 수 있습니다. 이 세 가지 경우에 사용하는 색상의 유형과 사용 방식은 상당히 다릅니다.


## 구별을 위한 도구로서의 색상

지도상의 다른 국가나 특정 제품의 다른 제조업체와 같이 본질적인 순서가 없는 개별 항목이나 그룹을 구별하기 위한 수단으로 색상을 자주 사용합니다. 이 경우 *정성적* 색상 척도를 사용합니다. 이러한 척도에는 서로 명확하게 구별되면서도 서로 동등하게 보이도록 선택된 유한한 특정 색상 집합이 포함됩니다. 두 번째 조건은 다른 색상에 비해 눈에 띄는 색상이 없어야 한다는 것입니다. 그리고 색상은 연속적으로 밝아지는 색상 시퀀스와 같이 순서의 인상을 만들어서는 안 됩니다. 이러한 색상은 정의상 순서가 없는 색칠된 항목 사이에 명백한 순서를 만들 것입니다.

많은 적절한 정성적 색상 척도를 쉽게 사용할 수 있습니다. 그림 \@ref(fig:qualitative-scales)는 세 가지 대표적인 예를 보여줍니다. 특히 ColorBrewer 프로젝트는 상당히 밝은 색상과 상당히 어두운 색상을 모두 포함하여 다양한 정성적 색상 척도를 제공합니다[@ColorBrewer].

(ref:qualitative-scales) 예시적인 정성적 색상 척도. 오카베 이토 척도는 이 책 전체에서 사용되는 기본 척도입니다[@Okabe-Ito-CUD]. ColorBrewer Dark2 척도는 ColorBrewer 프로젝트에서 제공합니다[@ColorBrewer]. ggplot2 색조 척도는 널리 사용되는 플로팅 소프트웨어 ggplot2의 기본 정성적 척도입니다.

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/qualitative-scales-1.png" alt="(ref:qualitative-scales)" width="685.714285714286" />
<p class="caption">(\#fig:qualitative-scales)(ref:qualitative-scales)</p>
</div>

정성적 색상 척도를 사용하는 방법의 예로 그림 \@ref(fig:popgrowth-US)를 살펴보십시오. 이 그림은 2000년부터 2010년까지 미국 주의 인구 증가율을 보여줍니다. 저는 주를 인구 증가율 순으로 정렬하고 지리적 지역별로 색칠했습니다. 이 색칠은 동일한 지역의 주들이 유사한 인구 증가를 경험했음을 강조합니다. 특히 서부와 남부의 주들은 가장 큰 인구 증가를 보인 반면 중서부와 북동부의 주들은 훨씬 적게 성장했습니다.

(ref:popgrowth-US) 2000년부터 2010년까지 미국의 인구 증가. 서부와 남부의 주들이 가장 큰 증가를 보인 반면, 중서부와 북동부의 주들은 훨씬 적은 증가를 보이거나 미시간주의 경우 심지어 감소했습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/popgrowth-US-1.png" alt="(ref:popgrowth-US)" width="576" />
<p class="caption">(\#fig:popgrowth-US)(ref:popgrowth-US)</p>
</div>



## 데이터 값을 나타내는 색상

소득, 온도 또는 속도와 같은 데이터 값을 나타내는 데에도 색상을 사용할 수 있습니다. 이 경우 *순차적* 색상 척도를 사용합니다. 이러한 척도에는 (i) 어떤 값이 다른 값보다 크거나 작은지, (ii) 두 특정 값이 서로 얼마나 떨어져 있는지를 명확하게 나타내는 색상 시퀀스가 포함됩니다. 두 번째 요점은 색상 척도가 전체 범위에서 균일하게 변하는 것으로 인식되어야 함을 의미합니다.

순차적 척도는 단일 색조(예: 어두운 파란색에서 밝은 파란색) 또는 여러 색조(예: 어두운 빨간색에서 밝은 노란색)를 기반으로 할 수 있습니다(그림 \@ref(fig:sequential-scales)). 다중 색조 척도는 어두운 빨간색, 녹색 또는 파란색에서 밝은 노란색 또는 어두운 보라색에서 밝은 녹색과 같이 자연계에서 볼 수 있는 색상 그라데이션을 따르는 경향이 있습니다. 그 반대, 예를 들어 어두운 노란색에서 밝은 파란색은 부자연스러워 보이며 유용한 순차적 척도를 만들지 못합니다.

(ref:sequential-scales) 예시 순차적 색상 척도. ColorBrewer Blues 척도는 어두운 파란색에서 밝은 파란색으로 변하는 단색 척도입니다. Heat 및 Viridis 척도는 각각 어두운 빨간색에서 밝은 노란색으로, 어두운 파란색에서 녹색을 거쳐 밝은 노란색으로 변하는 다중 색조 척도입니다.

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/sequential-scales-1.png" alt="(ref:sequential-scales)" width="685.714285714286" />
<p class="caption">(\#fig:sequential-scales)(ref:sequential-scales)</p>
</div>

데이터 값을 색상으로 나타내는 것은 지리적 지역에 따라 데이터 값이 어떻게 변하는지 보여주고 싶을 때 특히 유용합니다. 이 경우 지리적 지역의 지도를 그리고 데이터 값으로 색칠할 수 있습니다. 이러한 지도를 *단계별 구분도*라고 합니다. 그림 \@ref(fig:map-Texas-income)은 텍사스 카운티 내 연간 중간 소득을 해당 카운티 지도에 매핑한 예를 보여줍니다.

(ref:map-Texas-income) 텍사스 카운티의 연간 중간 소득. 가장 높은 중간 소득은 주요 텍사스 대도시 지역, 특히 휴스턴과 댈러스 근처에서 나타납니다. 서부 텍사스의 러빙 카운티에 대한 중간 소득 추정치는 없으므로 해당 카운티는 회색으로 표시됩니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사


<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/map-Texas-income-1.png" alt="(ref:map-Texas-income)" width="576" />
<p class="caption">(\#fig:map-Texas-income)(ref:map-Texas-income)</p>
</div>

경우에 따라 중립적인 중간점을 기준으로 두 방향 중 하나의 데이터 값 편차를 시각화해야 합니다. 한 가지 간단한 예는 양수와 음수를 모두 포함하는 데이터 세트입니다. 값이 양수인지 음수인지, 그리고 0에서 어느 방향으로 얼마나 벗어나는지 즉시 명확하게 알 수 있도록 다른 색상으로 표시하고 싶을 수 있습니다. 이 상황에 적합한 색상 척도는 *발산형* 색상 척도입니다. 발산형 척도는 일반적으로 밝은 색상으로 표시되는 공통 중간점에서 함께 꿰맨 두 개의 순차적 척도로 생각할 수 있습니다(그림 \@ref(fig:diverging-scales)). 발산형 척도는 균형을 이루어야 하므로 중앙의 밝은 색상에서 바깥쪽의 어두운 색상으로의 진행이 양방향으로 거의 동일해야 합니다. 그렇지 않으면 인지된 데이터 값의 크기는 중간점 값보다 높거나 낮은지에 따라 달라집니다.

(ref:diverging-scales) 예시 발산 색상 척도. 발산 척도는 공통 중간 색상에서 함께 꿰맨 두 개의 순차적 척도로 생각할 수 있습니다. 발산 척도에 대한 일반적인 색상 선택에는 갈색에서 녹청색, 분홍색에서 황록색, 파란색에서 빨간색이 포함됩니다.

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/diverging-scales-1.png" alt="(ref:diverging-scales)" width="685.714285714286" />
<p class="caption">(\#fig:diverging-scales)(ref:diverging-scales)</p>
</div>

발산형 색상 척도의 적용 예로 그림 \@ref(fig:map-Texas-race)를 살펴보십시오. 이 그림은 텍사스 카운티에서 백인으로 식별되는 사람들의 비율을 보여줍니다. 백분율은 항상 양수이지만 50%가 의미 있는 중간점 값이므로 여기서는 발산형 척도가 정당화됩니다. 50%를 초과하는 숫자는 백인이 다수임을 나타내고 50% 미만의 숫자는 그 반대를 나타냅니다. 이 시각화는 백인이 다수인 카운티, 소수인 카운티, 백인과 비백인이 거의 같은 비율로 발생하는 카운티를 명확하게 보여줍니다.

(ref:map-Texas-race) 텍사스 카운티에서 백인으로 식별되는 사람들의 비율. 백인은 북부 및 동부 텍사스에서 다수이지만 남부 또는 서부 텍사스에서는 그렇지 않습니다. 데이터 출처: 2010년 미국 인구 조사

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/map-Texas-race-1.png" alt="(ref:map-Texas-race)" width="576" />
<p class="caption">(\#fig:map-Texas-race)(ref:map-Texas-race)</p>
</div>



## 강조를 위한 도구로서의 색상

색상은 데이터의 특정 요소를 강조하는 효과적인 도구가 될 수도 있습니다. 데이터 세트에는 우리가 전달하고자 하는 이야기에 대한 주요 정보를 담고 있는 특정 범주나 값이 있을 수 있으며, 관련 그림 요소를 독자에게 강조하여 이야기를 강화할 수 있습니다. 이러한 강조는 그림의 나머지 부분에 대해 생생하게 눈에 띄는 색상이나 색상 집합으로 이러한 그림 요소를 색칠하여 쉽게 달성할 수 있습니다. 이 효과는 차분한 색상 집합과 일치하는 더 강하고 어둡고/거나 채도가 높은 색상 집합을 모두 포함하는 색상 척도인 *강조* 색상 척도를 사용하여 얻을 수 있습니다(그림 \@ref(fig:accent-scales)).

(ref:accent-scales) 예시 강조 색상 척도, 각각 4개의 기본 색상과 3개의 강조 색상 포함. 강조 색상 척도는 여러 가지 방법으로 파생될 수 있습니다. (상단) 기존 색상 척도(예: 오카베 이토 척도, 그림 \@ref(fig:qualitative-scales))를 가져와 일부 색상을 밝게 하거나 부분적으로 채도를 낮추고 다른 색상을 어둡게 합니다. (중간) 회색 값을 가져와 색상과 쌍을 이룹니다. (하단) 기존 강조 색상 척도(예: ColorBrewer 프로젝트의 척도)를 사용합니다.

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/accent-scales-1.png" alt="(ref:accent-scales)" width="685.714285714286" />
<p class="caption">(\#fig:accent-scales)(ref:accent-scales)</p>
</div>

동일한 데이터가 다른 색칠 접근 방식으로 다른 이야기를 뒷받침할 수 있는 방법의 예로, 이제 두 특정 주인 텍사스와 루이지애나를 강조 표시하는 그림 \@ref(fig:popgrowth-US)의 변형을 만들었습니다(그림 \@ref(fig:popgrowth-US-highlight)). 두 주 모두 남부에 있고 바로 이웃하고 있지만 한 주(텍사스)는 미국 내에서 다섯 번째로 빠르게 성장하는 주였고 다른 주는 2000년부터 2010년까지 세 번째로 느리게 성장하는 주였습니다.

(ref:popgrowth-US-highlight) 2000년부터 2010년까지 이웃한 남부 주인 텍사스와 루이지애나는 미국 전역에서 가장 높은 인구 증가율과 가장 낮은 인구 증가율을 경험했습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/popgrowth-US-highlight-1.png" alt="(ref:popgrowth-US-highlight)" width="576" />
<p class="caption">(\#fig:popgrowth-US-highlight)(ref:popgrowth-US-highlight)</p>
</div>

강조 색상을 사용할 때는 기본 색상이 주의를 끌기 위해 경쟁하지 않도록 하는 것이 중요합니다. 그림 \@ref(fig:popgrowth-US-highlight)에서 기본 색상이 얼마나 단조로운지 주목하십시오. 그러나 강조 색상을 잘 뒷받침합니다. 너무 화려한 기본 색상을 사용하여 강조 색상과 독자의 주의를 끌기 위해 경쟁하게 만드는 실수를 하기 쉽습니다. 그러나 쉬운 해결책이 있습니다. 강조 표시된 데이터 범주나 점을 제외한 그림의 모든 요소에서 모든 색상을 제거하기만 하면 됩니다. 이 전략의 예는 그림 \@ref(fig:Aus-athletes-track)에 나와 있습니다.


(ref:Aus-athletes-track) 육상 선수는 인기 있는 스포츠에 참여하는 남자 프로 선수 중 가장 키가 작고 마른 편에 속합니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="color_basics_files/figure-html/Aus-athletes-track-1.png" alt="(ref:Aus-athletes-track)" width="576" />
<p class="caption">(\#fig:Aus-athletes-track)(ref:Aus-athletes-track)</p>
</div>
