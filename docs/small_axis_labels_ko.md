# 더 큰 축 레이블 사용하기 {#small-axis-labels}

이 책에서 단 하나의 교훈만 얻는다면 이것을 명심하십시오. 축 레이블, 축 눈금 레이블 및 기타 다양한 플롯 주석에 주의를 기울이십시오. 너무 작을 가능성이 높습니다. 제 경험상 거의 모든 플롯 라이브러리와 그래프 소프트웨어는 기본값이 좋지 않습니다. 기본값을 사용하면 거의 확실하게 잘못된 선택을 하는 것입니다.

예를 들어 그림 \@ref(fig:Aus-athletes-small)을 생각해 보십시오. 저는 이런 그림을 항상 봅니다. 축 레이블, 축 눈금 레이블, 범례 레이블이 모두 믿을 수 없을 정도로 작습니다. 거의 보이지 않으며 범례의 주석을 읽으려면 페이지를 확대해야 할 수도 있습니다.

(ref:Aus-athletes-small) 호주 남자 프로 운동선수의 키 대비 체지방률. (각 점은 한 명의 운동선수를 나타냅니다.) 이 그림은 텍스트 요소가 너무 작아서 거의 읽을 수 없다는 일반적인 문제점을 안고 있습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="small_axis_labels_files/figure-html/Aus-athletes-small-1.png" alt="(ref:Aus-athletes-small)" width="576" />
<p class="caption">(\#fig:Aus-athletes-small)(ref:Aus-athletes-small)</p>
</div>

이 그림의 다소 나은 버전은 그림 \@ref(fig:Aus-athletes-ugly)로 표시됩니다. 글꼴이 여전히 너무 작다고 생각하며 그래서 그림에 못생겼다고 표시했습니다. 그러나 우리는 올바른 방향으로 나아가고 있습니다. 이 그림은 어떤 상황에서는 통과할 수 있을 것입니다. 여기서 저의 주요 비판은 레이블이 읽기 어렵다는 것보다 그림이 균형 잡히지 않았다는 것입니다. 텍스트 요소가 그림의 나머지 부분에 비해 너무 작습니다.

(ref:Aus-athletes-ugly) 남자 운동선수의 키 대비 체지방률. 이 그림은 그림 \@ref(fig:Aus-athletes-small)보다 개선되었지만 텍스트 요소가 너무 작고 그림이 균형 잡히지 않았습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="small_axis_labels_files/figure-html/Aus-athletes-ugly-1.png" alt="(ref:Aus-athletes-ugly)" width="576" />
<p class="caption">(\#fig:Aus-athletes-ugly)(ref:Aus-athletes-ugly)</p>
</div>


다음 그림은 이 책 전체에서 적용하는 기본 설정을 사용합니다. 균형이 잘 잡혀 있고 텍스트가 명확하게 보이며 그림의 전체 크기와 잘 어울린다고 생각합니다.

(ref:Aus-athletes-good) 남자 운동선수의 키 대비 체지방률. 모든 그림 요소가 적절하게 크기가 조정되었습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="small_axis_labels_files/figure-html/Aus-athletes-good-1.png" alt="(ref:Aus-athletes-good)" width="576" />
<p class="caption">(\#fig:Aus-athletes-good)(ref:Aus-athletes-good)</p>
</div>

중요하게도 레이블을 너무 크게 만들 수도 있습니다(그림 \@ref(fig:Aus-athletes-big-ugly)). 예를 들어 그림을 작은 크기로 축소하려는 경우 큰 레이블이 필요할 수 있지만 그림의 여러 요소(특히 레이블 텍스트 및 플롯 기호)가 서로 맞아야 합니다. 그림 \@ref(fig:Aus-athletes-big-ugly)에서는 데이터를 시각화하는 데 사용된 점이 텍스트에 비해 너무 작습니다. 이 문제를 해결하면 그림이 다시 허용 가능해집니다(그림 \@ref(fig:Aus-athletes-big-good)).

(ref:Aus-athletes-big-ugly) 남자 운동선수의 키 대비 체지방률. 텍스트 요소가 상당히 크며 그림을 매우 작은 축척으로 재현하려는 경우 크기가 적절할 수 있습니다. 그러나 그림 전체가 균형 잡히지 않았습니다. 점이 텍스트 요소에 비해 너무 작습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="small_axis_labels_files/figure-html/Aus-athletes-big-ugly-1.png" alt="(ref:Aus-athletes-big-ugly)" width="576" />
<p class="caption">(\#fig:Aus-athletes-big-ugly)(ref:Aus-athletes-big-ugly)</p>
</div>


(ref:Aus-athletes-big-good) 남자 운동선수의 키 대비 체지방률. 모든 그림 요소는 그림이 균형을 이루고 작은 축척으로 재현될 수 있도록 크기가 조정되었습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="small_axis_labels_files/figure-html/Aus-athletes-big-good-1.png" alt="(ref:Aus-athletes-big-good)" width="576" />
<p class="caption">(\#fig:Aus-athletes-big-good)(ref:Aus-athletes-big-good)</p>
</div>

그림 \@ref(fig:Aus-athletes-big-good)을 보고 모든 것이 너무 크다고 생각할 수 있습니다. 그러나 축소하기 위한 것임을 명심하십시오. 그림을 너비가 1~2인치만 되도록 축소하면 괜찮아 보입니다. 사실 그 축척에서는 이 장의 그림 중 이 그림만 보기 좋습니다.

<div class="rmdtip">
<p>축 레이블 크기가 적절한지 확인하려면 항상 그림을 축소하여 보십시오.</p>
</div>

축 레이블이 너무 작은 그림을 일상적으로 만드는 데에는 간단한 심리적 이유가 있다고 생각하며 이는 크고 고해상도 컴퓨터 모니터와 관련이 있습니다. 우리는 일상적으로 컴퓨터 화면에서 그림을 미리 보며 종종 그림이 화면의 넓은 공간을 차지하는 동안 그렇게 합니다. 이러한 보기 모드에서는 비교적 작은 텍스트도 완벽하게 괜찮고 읽기 쉽게 보이며 큰 텍스트는 어색하고 압도적으로 보일 수 있습니다. 사실 이 장의 첫 번째 그림을 가져와 전체 화면을 채울 때까지 확대하면 괜찮아 보인다고 생각할 것입니다. 해결책은 항상 그림을 현실적인 인쇄 크기로 보는 것입니다. 화면에서 너비가 3~5인치만 되도록 축소하거나 방 반대편으로 가서 상당한 거리에서도 그림이 여전히 보기 좋은지 확인할 수 있습니다.
