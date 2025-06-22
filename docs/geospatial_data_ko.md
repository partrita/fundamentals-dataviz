# 지리 공간 데이터 시각화 {#geospatial-data}

많은 데이터 세트에는 물리적 세계의 위치와 연결된 정보가 포함되어 있습니다. 예를 들어 생태학 연구에서 데이터 세트에는 특정 식물이나 동물이 발견된 위치가 나열될 수 있습니다. 마찬가지로 사회경제적 또는 정치적 맥락에서 데이터 세트에는 특정 속성(예: 소득, 연령 또는 학력)을 가진 사람들이 사는 위치 또는 인공물(예: 다리, 도로, 건물)이 건설된 위치에 대한 정보가 포함될 수 있습니다. 이러한 모든 경우에 데이터를 적절한 지리 공간적 맥락에서 시각화하는 것, 즉 데이터를 실제 지도나 지도와 유사한 다이어그램으로 표시하는 것이 도움이 될 수 있습니다.

지도는 독자에게 직관적인 경향이 있지만 디자인하기 어려울 수 있습니다. 지도 투영과 같은 개념과 특정 응용 프로그램에 대해 각도 또는 면적의 정확한 표현이 더 중요한지 여부를 고려해야 합니다. 일반적인 매핑 기법인 *단계 구분도*는 데이터 값을 서로 다른 색상의 공간 영역으로 나타내는 것으로 구성됩니다. 단계 구분도는 때때로 매우 유용할 수 있지만 다른 경우에는 매우 오해의 소지가 있을 수 있습니다. 대안으로 *카토그램*이라는 지도와 유사한 다이어그램을 구성할 수 있으며, 이는 의도적으로 지도 영역을 왜곡하거나 예를 들어 동일한 크기의 정사각형과 같이 양식화된 형태로 나타낼 수 있습니다.


## 투영

지구는 대략 구형이며(그림 \@ref(fig:world-orthographic)), 더 정확하게는 회전축을 따라 약간 납작한 편구체입니다. 회전축이 편구체와 교차하는 두 위치를 *극*(북극과 남극)이라고 합니다. 편구체를 두 극에 등거리인 선을 그려 북반구와 남반구로 나눕니다. 이 선을 *적도*라고 합니다. 지구상의 위치를 고유하게 지정하려면 세 가지 정보가 필요합니다. 적도 방향을 따라 어디에 위치하는지(경도), 적도에 수직으로 이동할 때 어느 극에 얼마나 가까운지(위도), 지구 중심에서 얼마나 멀리 떨어져 있는지(고도)입니다. 경도, 위도, 고도는 *기준계*라고 하는 참조 시스템에 대해 지정됩니다. 기준계는 지구의 모양과 크기, 그리고 경도, 위도, 고도 0의 위치와 같은 속성을 지정합니다. 널리 사용되는 기준계 중 하나는 GPS(Global Positioning System)에서 사용하는 WGS(World Geodetic System) 84입니다.

(ref:world-orthographic) 우주에서 볼 수 있는 유럽과 북아프리카를 보여주는 세계의 정사 투영. 북극에서 남쪽으로 뻗어 나가는 선을 *경선*이라고 하고 경선에 직교하는 선을 *평행선*이라고 합니다. 모든 경선은 길이가 같지만 평행선은 어느 극에 가까울수록 짧아집니다.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/world-orthographic-1.png" alt="(ref:world-orthographic)" width="528" />
<p class="caption">(\#fig:world-orthographic)(ref:world-orthographic)</p>
</div>
고도는 많은 지리 공간 응용 프로그램에서 중요한 양이지만 지도를 형태로 지리 공간 데이터를 시각화할 때는 주로 다른 두 차원인 경도와 위도에 관심을 갖습니다. 경도와 위도는 모두 각도이며 도로 표현됩니다. 경도 도는 위치가 동쪽 또는 서쪽으로 얼마나 떨어져 있는지 측정합니다. 동일한 경도의 선을 *경선*이라고 하며 모든 경선은 두 극에서 끝납니다(그림 \@ref(fig:world-orthographic)). 0&deg; 경도에 해당하는 본초 자오선은 영국 그리니치 마을을 통과합니다. 본초 자오선 반대편의 경선은 180&deg; 경도(180&deg;E라고도 함)에 있으며 이는 -180&deg; 경도(180&deg;W라고도 함)와 동일하며 국제 날짜 변경선 근처에 있습니다. 위도 도는 위치가 북쪽 또는 남쪽으로 얼마나 떨어져 있는지 측정합니다. 적도는 0&deg; 위도에 해당하고 북극은 90&deg; 위도(90&deg;N이라고도 함)에 해당하며 남극은 -90&deg; 위도(90&deg;S라고도 함)에 해당합니다. 동일한 위도의 선은 적도와 평행하게 이어지므로 *평행선*이라고 합니다. 모든 경선은 길이가 같으며 지구 주위의 대원의 절반에 해당하지만 평행선의 길이는 위도에 따라 다릅니다(그림 \@ref(fig:world-orthographic)). 가장 긴 평행선은 0&deg; 위도의 적도이며 가장 짧은 평행선은 북극과 남극, 90&deg;N 및 90&deg;S에 있으며 길이가 0입니다.

지도 제작의 과제는 지구의 구형 표면을 가져와 평평하게 만들어 지도에 표시해야 한다는 것입니다. *투영*이라고 하는 이 과정은 곡면을 평면에 정확하게 투영할 수 없기 때문에 필연적으로 왜곡을 유발합니다. 구체적으로 투영은 각도 또는 면적 중 하나는 보존할 수 있지만 둘 다 보존할 수는 없습니다. 전자를 수행하는 투영을 *등각*이라고 하고 후자를 수행하는 투영을 *등면적*이라고 합니다. 다른 투영은 각도나 면적을 보존하지 않고 대신 일부 기준점이나 선까지의 거리와 같은 다른 관심 있는 양을 보존할 수 있습니다. 마지막으로 일부 투영은 각도와 면적을 보존하는 것 사이의 절충안을 시도합니다. 이러한 절충 투영은 전 세계를 미적으로 만족스러운 방식으로 표시하는 데 자주 사용되며 각도 및 면적 왜곡을 어느 정도 허용합니다(그림 \@ref(fig:worldmap-four-projections)). 특정 지도에 대해 지구의 일부 또는 전체를 투영하는 다양한 방법을 체계화하고 추적하기 위해 EPSG(European Petroleum Survey Group) 또는 ESRI(Environmental Systems Research Institute)와 같은 다양한 표준 기관 및 조직에서 투영 등록부를 유지 관리합니다. 예를 들어 EPSG:4326은 GPS에서 사용하는 WGS 84 좌표계의 투영되지 않은 경도 및 위도 값을 나타냅니다. http://spatialreference.org/ 및 https://epsg.io/를 포함한 여러 웹사이트에서 이러한 등록된 투영에 편리하게 액세스할 수 있습니다.

가장 초기에 사용된 지도 투영법 중 하나인 메르카토르 투영법은 16세기에 항해용으로 개발되었습니다. 모양을 정확하게 나타내지만 극 근처에서 심각한 면적 왜곡을 유발하는 등각 투영법입니다(그림 \@ref(fig:world-mercator)). 메르카토르 투영법은 지구를 원통에 매핑한 다음 원통을 펼쳐 직사각형 지도를 만듭니다. 이 투영법에서 경선은 등간격 수직선인 반면 평행선은 적도에서 멀어질수록 간격이 넓어지는 수평선입니다(그림 \@ref(fig:world-mercator)). 평행선 사이의 간격은 경선을 완벽하게 수직으로 유지하기 위해 극에 가까울수록 늘려야 하는 정도에 비례하여 증가합니다.

(ref:world-mercator) 세계의 메르카토르 투영법. 이 투영법에서 평행선은 직선 수평선이고 경선은 직선 수직선입니다. 국부적인 각도를 보존하는 등각 투영법이지만 극 근처에서 면적에 심각한 왜곡을 유발합니다. 예를 들어 이 투영법에서 그린란드는 아프리카보다 커 보이지만 실제로는 아프리카가 그린란드보다 14배 더 큽니다(그림 \@ref(fig:world-orthographic) 및 \@ref(fig:world-goode) 참조).

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/world-mercator-1.png" alt="(ref:world-mercator)" width="480" />
<p class="caption">(\#fig:world-mercator)(ref:world-mercator)</p>
</div>

심각한 면적 왜곡을 유발하기 때문에 메르카토르 투영법은 전 세계 지도에 대한 선호도가 떨어졌습니다. 그러나 이 투영법의 변형은 계속해서 사용되고 있습니다. 예를 들어 횡단 메르카토르 투영법은 적당히 작은 영역(경도 몇 도 미만)을 큰 배율로 표시하는 대규모 지도에 일상적으로 사용됩니다. 또 다른 변형인 웹 메르카토르 투영법은 Google 지도용으로 Google에서 도입했으며 여러 온라인 지도 응용 프로그램에서 사용됩니다.

완벽하게 면적을 보존하는 전 세계 투영법은 구드 호몰로사인입니다(그림 \@ref(fig:world-goode)). 일반적으로 중단된 형태로 표시되며 북반구에 한 번, 남반구에 세 번 절단되어 주요 육지를 방해하지 않도록 신중하게 선택됩니다(그림 \@ref(fig:world-goode)). 절단은 투영법이 면적을 보존하고 각도를 대략적으로 보존하도록 하지만 바다가 연속적이지 않고 그린란드 중간을 가로지르는 절단과 남극 대륙을 가로지르는 여러 절단이 발생하는 단점이 있습니다. 중단된 구드 호몰로사인은 특이한 미학적 특징과 이상한 이름을 가지고 있지만 전 세계적으로 면적을 정확하게 재현해야 하는 지도 응용 프로그램에 좋은 선택입니다.

(ref:world-goode) 세계의 중단된 구드 호몰로사인 투영법. 이 투영법은 각도 왜곡을 최소화하면서 면적을 정확하게 보존하지만 바다와 일부 육지(그린란드, 남극 대륙)를 비연속적인 방식으로 표시하는 단점이 있습니다.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/world-goode-1.png" alt="(ref:world-goode)" width="685.714285714286" />
<p class="caption">(\#fig:world-goode)(ref:world-goode)</p>
</div>

지도 투영으로 인한 모양 또는 면적 왜곡은 전 세계 지도를 만들려고 할 때 특히 두드러지지만 개별 대륙이나 국가 규모에서도 문제를 일으킬 수 있습니다. 예를 들어 "하위 48개 주"(연속된 48개 주), 알래스카, 하와이로 구성된 미국을 생각해 보십시오(그림 \@ref(fig:usa-orthographic)). 하위 48개 주만 지도에 투영하는 것은 비교적 쉽지만 알래스카와 하와이는 하위 48개 주에서 너무 멀리 떨어져 있어 50개 주 전체를 하나의 지도에 투영하는 것이 어색해집니다.

(ref:usa-orthographic) 지구본에 표시된 알래스카, 하와이 및 하위 48개 주의 상대적 위치.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/usa-orthographic-1.png" alt="(ref:usa-orthographic)" width="528" />
<p class="caption">(\#fig:usa-orthographic)(ref:usa-orthographic)</p>
</div>

그림 \@ref(fig:usa-true-albers)는 등면적 알버스 투영법을 사용하여 만든 50개 주 전체 지도를 보여줍니다. 이 투영법은 50개 주의 상대적인 모양, 면적, 위치를 합리적으로 표현하지만 몇 가지 문제가 있습니다. 첫째, 알래스카는 예를 들어 그림 \@ref(fig:world-mercator) 또는 \@ref(fig:usa-orthographic)에서 보이는 모습에 비해 이상하게 늘어나 보입니다. 둘째, 지도는 바다/빈 공간이 지배적입니다. 하위 48개 주가 지도 면적의 더 큰 부분을 차지하도록 더 확대할 수 있다면 더 좋을 것입니다.

(ref:usa-true-albers) 미국 지도, 면적 보존 알버스 투영법 사용 (ESRI:102003, 일반적으로 하위 48개 주 투영에 사용됨). 알래스카와 하와이는 실제 위치에 표시됩니다.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/usa-true-albers-1.png" alt="(ref:usa-true-albers)" width="576" />
<p class="caption">(\#fig:usa-true-albers)(ref:usa-true-albers)</p>
</div>

흥미롭지 않은 빈 공간 문제를 해결하기 위해 알래스카와 하와이를 별도로 투영하여(모양 왜곡을 최소화하기 위해) 하위 48개 주 아래에 표시하는 것이 일반적인 관행입니다(그림 \@ref(fig:usa-albers)). 그림 \@ref(fig:usa-albers)에서 알래스카가 그림 \@ref(fig:usa-true-albers)에서보다 하위 48개 주에 비해 훨씬 작게 보이는 것을 알 수 있습니다. 이러한 불일치의 이유는 알래스카가 이동했을 뿐만 아니라 일반적인 중서부 또는 서부 주와 비슷한 크기로 보이도록 축척되었기 때문입니다. 이러한 축척은 일반적인 관행이지만 매우 오해의 소지가 있으므로 그림에 "나쁨"이라고 표시했습니다.

(ref:usa-albers) 알래스카와 하와이 주를 하위 48개 주 아래에 배치한 미국 시각화. 알래스카는 또한 주의 실제 크기의 35%만 선형 범위가 되도록 축척되었습니다. (즉, 주의 면적이 실제 크기의 약 12%로 축소되었습니다.) 이러한 축척은 알래스카가 시각적으로 일반적인 중서부 또는 서부 주와 비슷한 크기로 보이도록 하기 위해 자주 적용됩니다. 그러나 이 축척은 매우 오해의 소지가 있으므로 그림에 "나쁨"이라고 표시했습니다.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/usa-albers-1.png" alt="(ref:usa-albers)" width="576" />
<p class="caption">(\#fig:usa-albers)(ref:usa-albers)</p>
</div>

알래스카를 이동하고 축척하는 대신 축척을 변경하지 않고 이동할 수도 있습니다(그림 \@ref(fig:usa-albers-revised)). 이 시각화는 알래스카가 텍사스 크기의 두 배 이상인 가장 큰 주임을 명확하게 보여줍니다. 미국이 이런 식으로 표시되는 것에 익숙하지 않지만 제 생각에는 그림 \@ref(fig:usa-albers)보다 50개 주를 훨씬 더 합리적으로 표현한 것입니다.

(ref:usa-albers-revised) 알래스카와 하와이 주를 하위 48개 주 아래에 배치한 미국 시각화.

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/usa-albers-revised-1.png" alt="(ref:usa-albers-revised)" width="576" />
<p class="caption">(\#fig:usa-albers-revised)(ref:usa-albers-revised)</p>
</div>


## 레이어

지리 공간 데이터를 적절한 맥락에서 시각화하기 위해 일반적으로 다양한 유형의 정보를 보여주는 여러 레이어로 구성된 지도를 만듭니다. 이 개념을 설명하기 위해 샌프란시스코만 지역의 풍력 터빈 위치를 시각화하겠습니다. 베이 지역에서 풍력 터빈은 두 곳에 집중되어 있습니다. 실로 풍력 발전 단지라고 부를 한 곳은 리오 비스타 근처에 있고 다른 한 곳은 트레이시 근처 헤이워드 동쪽에 있습니다(그림 \@ref(fig:sfbay-overview)).

(ref:sfbay-overview) 샌프란시스코만 지역의 풍력 터빈. 개별 풍력 터빈은 보라색 점으로 표시됩니다. 풍력 터빈이 밀집된 두 지역은 검은색 사각형으로 강조 표시됩니다. 리오 비스타 근처의 풍력 터빈을 통칭하여 실로 풍력 발전 단지라고 합니다. 지도 타일: Stamen Design, CC BY 3.0. 지도 데이터: OpenStreetMap, ODbL. 풍력 터빈 데이터: 미국 풍력 터빈 데이터베이스

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/sfbay-overview-1.png" alt="(ref:sfbay-overview)" width="754.285714285714" />
<p class="caption">(\#fig:sfbay-overview)(ref:sfbay-overview)</p>
</div>

그림 \@ref(fig:sfbay-overview)은 네 개의 개별 레이어로 구성됩니다. 맨 아래에는 언덕, 계곡, 물을 보여주는 지형 레이어가 있습니다. 다음 레이어는 도로망을 보여줍니다. 도로 레이어 위에는 개별 풍력 터빈의 위치를 나타내는 레이어를 배치했습니다. 이 레이어에는 풍력 터빈의 대부분을 강조 표시하는 두 개의 사각형도 포함되어 있습니다. 마지막으로 맨 위 레이어는 도시의 위치와 이름을 추가합니다. 이 네 개의 레이어는 그림 \@ref(fig:sfbay-layers)에 별도로 표시됩니다. 만들고 싶은 특정 지도에 대해 이러한 레이어 중 일부를 추가하거나 제거할 수 있습니다. 예를 들어 투표 구역 지도를 그리려는 경우 지형 정보는 관련성이 없고 주의를 산만하게 한다고 생각할 수 있습니다. 또는 태양광 발전 가능성을 평가하기 위해 노출되거나 덮인 지붕 면적 지도를 그리려는 경우 지형 정보를 개별 지붕과 실제 식생을 보여주는 위성 이미지로 대체할 수 있습니다. 대부분의 온라인 지도 응용 프로그램(예: Google 지도)에서 이러한 다양한 유형의 레이어를 대화식으로 시도해 볼 수 있습니다. 어떤 레이어를 유지하거나 제거하기로 결정하든 일반적으로 축척 막대와 북쪽 화살표를 추가하는 것이 좋습니다. 축척 막대는 독자가 지도에 표시된 공간 특징의 크기를 이해하는 데 도움이 되며 북쪽 화살표는 지도의 방향을 명확하게 합니다.

(ref:sfbay-layers) 그림 \@ref(fig:sfbay-overview)의 개별 레이어. 아래에서 위로 그림은 지형 레이어, 도로 레이어, 풍력 터빈을 보여주는 레이어, 도시 레이블을 지정하고 축척 막대와 북쪽 화살표를 추가하는 레이어로 구성됩니다. 지도 타일: Stamen Design, CC BY 3.0. 지도 데이터: OpenStreetMap, ODbL. 풍력 터빈 데이터 출처: 미국 풍력 터빈 데이터베이스

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/sfbay-layers-1.png" alt="(ref:sfbay-layers) " width="754.285714285714" />
<p class="caption">(\#fig:sfbay-layers)(ref:sfbay-layers) </p>
</div>

챕터 \@ref(aesthetic-mapping)에서 논의된 모든 개념, 즉 데이터를 미학적 요소에 매핑하는 개념은 지도에도 적용됩니다. 데이터 포인트를 지리적 맥락에 배치하고 색상이나 모양과 같은 미학적 요소를 통해 다른 데이터 차원을 표시할 수 있습니다. 예를 들어 그림 \@ref(fig:shiloh-map)은 그림 \@ref(fig:sfbay-overview)에서 "실로 풍력 발전 단지"로 표시된 사각형의 확대된 보기를 제공합니다. 개별 풍력 터빈은 점으로 표시되며 점의 색상은 특정 터빈이 건설된 시기를 나타내고 모양은 풍력 터빈이 속한 프로젝트를 나타냅니다. 이와 같은 지도는 지역이 어떻게 개발되었는지에 대한 간략한 개요를 제공할 수 있습니다. 예를 들어 여기서는 EDF Renewables가 2000년 이전에 건설된 비교적 작은 프로젝트이고 High Winds는 2000년에서 2004년 사이에 건설된 중간 규모의 프로젝트이며 Shiloh와 Solano는 이 지역에서 가장 큰 두 프로젝트로 모두 장기간에 걸쳐 건설되었음을 알 수 있습니다.

(ref:shiloh-map) 실로 풍력 발전 단지의 개별 풍력 터빈 위치. 각 점은 풍력 터빈 하나의 위치를 강조 표시합니다. 지도 영역은 그림 \@ref(fig:sfbay-overview)의 사각형에 해당합니다. 점은 풍력 터빈이 건설된 시기에 따라 색상이 지정되며 점의 모양은 개별 풍력 터빈이 속한 다양한 프로젝트를 나타냅니다. 지도 타일: Stamen Design, CC BY 3.0. 지도 데이터: OpenStreetMap, ODbL. 풍력 터빈 데이터 출처: 미국 풍력 터빈 데이터베이스

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/shiloh-map-1.png" alt="(ref:shiloh-map)" width="576" />
<p class="caption">(\#fig:shiloh-map)(ref:shiloh-map)</p>
</div>


## 단계 구분도 매핑 {#choropleth-mapping}

어떤 양이 위치에 따라 어떻게 변하는지 보여주고자 하는 경우가 많습니다. 표시하려는 데이터 차원에 따라 지도의 개별 지역을 색칠하여 이를 수행할 수 있습니다. 이러한 지도를 *단계 구분도*라고 합니다.

간단한 예로 미국 전역의 인구 밀도(제곱킬로미터당 인구 수)를 생각해 보십시오. 미국 각 카운티의 인구 수를 가져와 카운티의 면적으로 나눈 다음 각 카운티의 색상이 인구 수와 면적 사이의 비율에 해당하는 지도를 그립니다(그림 \@ref(fig:population-density-counties)). 동부 및 서부 해안의 주요 도시가 미국에서 가장 인구가 많은 지역이고 대평원과 서부 주는 인구 밀도가 낮으며 알래스카 주는 가장 인구가 적다는 것을 알 수 있습니다.

(ref:population-density-counties) 미국의 모든 카운티의 인구 밀도를 단계 구분도로 표시했습니다. 인구 밀도는 제곱킬로미터당 인구 수로 보고됩니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/population-density-counties-1.png" alt="(ref:population-density-counties)" width="576" />
<p class="caption">(\#fig:population-density-counties)(ref:population-density-counties)</p>
</div>


그림 \@ref(fig:population-density-counties)는 낮은 인구 밀도를 나타내는 데 밝은 색상을 사용하고 높은 밀도를 나타내는 데 어두운 색상을 사용하여 고밀도 대도시 지역이 밝은 색상 배경에 어두운 색상으로 두드러지도록 합니다. 그림의 배경색이 밝을 때 어두운 색상을 더 높은 강도와 연관시키는 경향이 있습니다. 그러나 높은 값은 어두운 배경에서 밝게 빛나는 색상 척도를 선택할 수도 있습니다(그림 \@ref(fig:population-density-counties2)). 밝은 색상이 빨간색-노란색 스펙트럼에 속하여 빛나는 것처럼 보이면 더 높은 강도를 나타내는 것으로 인식될 수 있습니다. 일반적인 원칙으로 그림을 흰색 용지에 인쇄하려는 경우 밝은 색상의 배경 영역(그림 \@ref(fig:population-density-counties)에서와 같이)이 일반적으로 더 잘 작동합니다. 온라인 보기나 어두운 배경에서는 어두운 색상의 배경 영역(그림 \@ref(fig:population-density-counties2)에서와 같이)이 더 바람직할 수 있습니다.

(ref:population-density-counties2) 미국의 모든 카운티의 인구 밀도를 단계 구분도로 표시했습니다. 이 지도는 색상 척도에서 높은 인구 밀도에 밝은 색상을 사용하고 낮은 인구 밀도에 어두운 색상을 사용한다는 점을 제외하고는 그림 \@ref(fig:population-density-counties)와 동일합니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/population-density-counties2-1.png" alt="(ref:population-density-counties2)" width="576" />
<p class="caption">(\#fig:population-density-counties2)(ref:population-density-counties2)</p>
</div>


(ref:median-income-counties) 미국의 모든 카운티의 중간 소득을 단계 구분도로 표시했습니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사




단계 구분도는 색칠이 밀도(즉, 그림 \@ref(fig:population-density-counties) 및 \@ref(fig:population-density-counties2)에서와 같이 표면적으로 나눈 일부 양)를 나타낼 때 가장 잘 작동합니다. 우리는 더 큰 영역을 더 작은 영역보다 더 큰 양에 해당하는 것으로 인식하며(비례 잉크에 대한 장, 챕터 \@ref(proportional-ink) 참조), 밀도별 음영은 이 효과를 수정합니다. 그러나 실제로는 밀도가 아닌 일부 양에 따라 색칠된 단계 구분도를 종종 볼 수 있습니다. 예를 들어 그림 \@ref(fig:map-Texas-income)에서는 텍사스 카운티의 연간 중간 소득 단계 구분도를 보여주었습니다. 이러한 단계 구분도 지도는 신중하게 준비하면 적절할 수 있습니다. 밀도가 아닌 양을 색상으로 매핑할 수 있는 두 가지 조건이 있습니다. 첫째, 색칠하는 모든 개별 영역이 거의 동일한 크기와 모양을 갖는 경우 일부 영역이 크기만으로 불균형한 주의를 끄는 것에 대해 걱정할 필요가 없습니다. 둘째, 색칠하는 개별 영역이 지도의 전체 크기에 비해 상대적으로 작고 색상이 나타내는 양이 개별 색칠된 영역보다 큰 규모로 변경되는 경우 다시 일부 영역이 크기만으로 불균형한 주의를 끄는 것에 대해 걱정할 필요가 없습니다. 이러한 조건은 모두 그림 \@ref(fig:map-Texas-income)에서 대략적으로 충족됩니다.

단계 구분도 매핑에서 연속적인 색상 척도와 이산적인 색상 척도의 효과를 고려하는 것도 중요합니다. 연속적인 색상 척도는 시각적으로 매력적으로 보이는 경향이 있지만(예: 그림 \@ref(fig:population-density-counties) 및 \@ref(fig:population-density-counties2)), 읽기 어려울 수 있습니다. 우리는 특정 색상 값을 인식하고 연속적인 척도와 일치시키는 데 능숙하지 않습니다. 따라서 데이터를 뚜렷한 색상으로 표현되는 이산적인 그룹으로 나누는 것이 종종 적절합니다. 4~6개의 구간이 좋은 선택입니다. 구간화는 일부 정보를 희생하지만 반대로 구간화된 색상은 고유하게 인식될 수 있습니다. 예를 들어 그림 \@ref(fig:median-income-counties-binned)은 텍사스 카운티의 중간 소득 지도(그림 \@ref(fig:map-Texas-income))를 미국 전체 카운티로 확장하고 5개의 뚜렷한 소득 구간으로 구성된 색상 척도를 사용합니다.

(ref:median-income-counties-binned) 미국의 모든 카운티의 중간 소득을 단계 구분도로 표시했습니다. 중간 소득 값은 5개의 뚜렷한 그룹으로 구간화되었는데, 이는 구간화된 색상 척도가 일반적으로 연속적인 색상 척도보다 읽기 쉽기 때문입니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/median-income-counties-binned-1.png" alt="(ref:median-income-counties-binned)" width="576" />
<p class="caption">(\#fig:median-income-counties-binned)(ref:median-income-counties-binned)</p>
</div>

미국 전체에서 카운티가 텍사스 내에서만큼 균일한 크기와 모양을 갖지는 않지만 그림 \@ref(fig:median-income-counties-binned)은 여전히 단계 구분도 지도로서 작동한다고 생각합니다. 어떤 개별 카운티도 지도를 지나치게 지배하지 않습니다. 그러나 주 수준에서 유사한 지도를 그릴 때 상황이 달라집니다(그림 \@ref(fig:median-income-states)). 그러면 알래스카가 단계 구분도를 지배하고 크기 때문에 중간 소득이 7만 달러 이상인 것이 일반적임을 시사합니다. 그러나 알래스카는 인구 밀도가 매우 낮으며(그림 \@ref(fig:population-density-counties) 및 \@ref(fig:population-density-counties2) 참조) 따라서 알래스카의 소득 수준은 미국 인구의 작은 부분에만 적용됩니다. 알래스카 카운티보다 인구가 훨씬 많은 미국 카운티의 대부분은 중간 소득이 6만 달러 미만입니다.

(ref:median-income-states) 미국의 모든 주의 중간 소득을 단계 구분도로 표시했습니다. 이 지도는 중간 소득은 높지만 인구 밀도는 매우 낮은 알래스카 주가 시각적으로 지배합니다. 동시에 동부 해안의 인구 밀도가 높은 고소득 주는 이 지도에서 그다지 두드러지지 않습니다. 종합적으로 이 지도는 미국의 소득 분포를 제대로 시각화하지 못하므로 "나쁨"으로 표시했습니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사


<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/median-income-states-1.png" alt="(ref:median-income-states)" width="576" />
<p class="caption">(\#fig:median-income-states)(ref:median-income-states)</p>
</div>


## 카토그램

모든 지도와 유사한 시각화가 유용하기 위해 지리적으로 정확해야 하는 것은 아닙니다. 예를 들어 그림 \@ref(fig:median-income-states)의 문제는 일부 주는 비교적 넓은 면적을 차지하지만 인구 밀도가 낮은 반면 다른 주는 작은 면적을 차지하지만 많은 주민이 있다는 것입니다. 주의 면적을 주민 수에 비례하도록 변형하면 어떻게 될까요? 이러한 수정된 지도를 *카토그램*이라고 하며 그림 \@ref(fig:median-income-cartogram)은 중간 소득 데이터 세트에 대해 어떻게 보일 수 있는지 보여줍니다. 개별 주를 여전히 인식할 수 있지만 인구 수에 대한 조정이 중요한 수정을 가져왔다는 것도 알 수 있습니다. 동부 해안 주, 플로리다, 캘리포니아는 크기가 많이 커졌지만 다른 서부 주와 알래스카는 축소되었습니다.

(ref:median-income-cartogram) 미국의 모든 주의 중간 소득을 카토그램으로 표시했습니다. 개별 주의 모양은 면적이 주민 수에 비례하도록 수정되었습니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/median-income-cartogram-1.png" alt="(ref:median-income-cartogram)" width="576" />
<p class="caption">(\#fig:median-income-cartogram)(ref:median-income-cartogram)</p>
</div>

왜곡된 모양의 카토그램 대신 각 주를 색칠된 정사각형으로 나타내는 훨씬 간단한 *카토그램 히트맵*을 그릴 수도 있습니다(그림 \@ref(fig:median-income-statebins)). 이 표현은 각 주의 인구 수를 보정하지 않으므로 인구가 더 많은 주를 과소 표현하고 인구가 적은 주를 과대 표현하지만 적어도 모든 주를 동등하게 취급하고 모양이나 크기에 따라 임의로 가중치를 부여하지 않습니다.

(ref:median-income-statebins) 미국의 모든 주의 중간 소득을 카토그램 히트맵으로 표시했습니다. 각 주는 동일한 크기의 정사각형으로 표시되며 정사각형은 다른 주에 대한 각 주의 대략적인 위치에 따라 배열됩니다. 이 표현은 각 주에 동일한 시각적 가중치를 부여합니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/median-income-statebins-1.png" alt="(ref:median-income-statebins)" width="576" />
<p class="caption">(\#fig:median-income-statebins)(ref:median-income-statebins)</p>
</div>

마지막으로 각 주의 위치에 개별 플롯을 배치하여 더 복잡한 카토그램을 그릴 수 있습니다. 예를 들어 각 주의 시간 경과에 따른 실업률 변화를 시각화하려는 경우 각 주에 대해 개별 그래프를 그린 다음 주들의 대략적인 상대적 위치에 따라 그래프를 배열하는 것이 도움이 될 수 있습니다(그림 \@ref(fig:unemployment-geofacet)). 미국 지리에 익숙한 사람에게는 이 배열이 예를 들어 알파벳순으로 배열하는 것보다 특정 주의 그래프를 더 쉽게 찾을 수 있도록 할 수 있습니다. 또한 이웃한 주는 유사한 패턴을 보일 것으로 예상되며 그림 \@ref(fig:unemployment-geofacet)은 실제로 그렇다는 것을 보여줍니다.

(ref:unemployment-geofacet) 2008년 금융 위기 전후의 주별 실업률. 각 패널은 2007년 1월부터 2013년 5월까지 한 주(컬럼비아 특별구(DC) 포함)의 실업률을 보여줍니다. 수직 격자선은 2008년, 2010년, 2012년 1월을 표시합니다. 지리적으로 가까운 주는 실업률에서 유사한 추세를 보이는 경향이 있습니다. 데이터 출처: 미국 노동 통계국

<div class="figure" style="text-align: center">
<img src="geospatial_data_files/figure-html/unemployment-geofacet-1.png" alt="(ref:unemployment-geofacet)" width="754.285714285714" />
<p class="caption">(\#fig:unemployment-geofacet)(ref:unemployment-geofacet)</p>
</div>
