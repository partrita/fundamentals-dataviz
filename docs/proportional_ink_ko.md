# (PART\*) 2부: 그림 디자인의 원칙 {-}

# 비례 잉크의 원칙 {#proportional-ink}

다양한 시각화 시나리오에서 그래픽 요소의 범위로 데이터 값을 나타냅니다. 예를 들어 막대 그래프에서는 0에서 시작하여 나타내는 데이터 값에서 끝나는 막대를 그립니다. 이 경우 데이터 값은 막대의 끝점뿐만 아니라 막대의 높이나 길이에도 인코딩됩니다. 0이 아닌 다른 값에서 시작하는 막대를 그리면 막대의 길이와 막대 끝점이 모순된 정보를 전달합니다. 이러한 그림은 동일한 그래픽 요소로 두 가지 다른 값을 보여주기 때문에 내부적으로 일관성이 없습니다. 점으로 데이터 값을 시각화하는 시나리오와 대조해 보십시오. 이 경우 값은 점의 위치에만 인코딩되고 점의 크기나 모양에는 인코딩되지 않습니다.

막대, 사각형, 임의 모양의 음영 영역 또는 표시된 데이터 값과 일치하거나 일치하지 않을 수 있는 명확한 시각적 범위를 가진 기타 모든 요소와 같은 그래픽 요소를 사용할 때마다 유사한 문제가 발생합니다. 이러한 모든 경우에 불일치가 없는지 확인해야 합니다. 이 개념은 버그스트롬과 웨스트가 *비례 잉크의 원칙*이라고 명명했습니다[@BergstromWest2016].

> **비례 잉크의 원칙:** 시각화에서 음영 처리된 영역의 크기는 나타내는 데이터 값에 비례해야 합니다.

(배경색과 다른 시각화의 모든 부분을 "잉크"라고 부르는 것이 일반적입니다. 여기에는 선, 점, 공유 영역 및 텍스트가 포함됩니다. 그러나 이 장에서는 주로 음영 처리된 영역에 대해 이야기합니다.) 이 원칙을 위반하는 경우는 특히 대중 매체와 금융계에서 매우 흔합니다.

## 선형 축을 따른 시각화

먼저 가장 일반적인 시나리오인 선형 척도를 따른 양의 시각화를 고려해 보겠습니다. 그림 \@ref(fig:hawaii-income-bars-bad)는 하와이 주를 구성하는 5개 카운티의 중간 소득을 보여줍니다. 신문 기사에서 흔히 볼 수 있는 일반적인 그림입니다. 그림을 빠르게 보면 하와이 카운티는 매우 가난하고 호놀룰루 카운티는 다른 카운티보다 훨씬 부유하다는 것을 알 수 있습니다. 그러나 그림 \@ref(fig:hawaii-income-bars-bad)는 모든 막대가 50,000달러 중간 소득에서 시작하기 때문에 상당히 오해의 소지가 있습니다. 따라서 각 막대의 끝점은 각 카운티의 실제 중간 소득을 정확하게 나타내지만 막대 높이는 중간 소득이 임의의 숫자인 50,000달러를 초과하는 정도를 나타냅니다. 그리고 인간의 인식은 이 그림을 볼 때 우리가 인식하는 주요 양이 막대 높이이지 *y* 축에 대한 막대 끝점의 위치가 아니라는 것입니다.

(ref:hawaii-income-bars-bad) 하와이 주 5개 카운티의 중간 소득. 이 그림은 *y* 축 눈금이 0달러가 아닌 50,000달러에서 시작하기 때문에 오해의 소지가 있습니다. 결과적으로 막대 높이는 표시된 값에 비례하지 않으며 하와이 카운티와 다른 4개 카운티 간의 소득 격차가 실제보다 훨씬 커 보입니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/hawaii-income-bars-bad-1.png" alt="(ref:hawaii-income-bars-bad)" width="576" />
<p class="caption">(\#fig:hawaii-income-bars-bad)(ref:hawaii-income-bars-bad)</p>
</div>

이 데이터의 적절한 시각화는 덜 흥미로운 이야기를 만듭니다(그림 \@ref(fig:hawaii-income-bars-good)). 카운티 간 중간 소득에는 차이가 있지만 그림 \@ref(fig:hawaii-income-bars-bad)에서 암시하는 것만큼 크지는 않습니다. 전반적으로 여러 카운티의 중간 소득은 다소 비슷합니다.

(ref:hawaii-income-bars-good) 하와이 주 5개 카운티의 중간 소득. 여기서 *y* 축 눈금은 0달러에서 시작하므로 5개 카운티의 중간 소득의 상대적 크기가 정확하게 표시됩니다. 데이터 출처: 2015년 5개년 미국 지역사회 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/hawaii-income-bars-good-1.png" alt="(ref:hawaii-income-bars-good)" width="576" />
<p class="caption">(\#fig:hawaii-income-bars-good)(ref:hawaii-income-bars-good)</p>
</div>

<div class="rmdtip">
<p>선형 눈금의 막대는 항상 0에서 시작해야 합니다.</p>
</div>

주가와 같은 시계열 시각화에서도 유사한 시각화 문제가 자주 발생합니다. 그림 \@ref(fig:fb-stock-drop-bad)는 2016년 11월 1일경 페이스북 주가가 대폭 하락했음을 시사합니다. 실제로는 주식 총 가격에 비해 주가 하락폭은 완만했습니다(그림 \@ref(fig:fb-stock-drop-good)). 그림 \@ref(fig:fb-stock-drop-bad)의 *y* 축 범위는 곡선 아래 음영이 없더라도 의심스러울 것입니다. 그러나 음영이 있으면 그림이 특히 문제가 됩니다. 음영은 *x* 축 위치에서 표시된 특정 *y* 값까지의 거리를 강조하므로 특정 날짜의 음영 영역 높이가 해당 날짜의 주가를 나타내는 시각적 인상을 만듭니다. 대신 그림 \@ref(fig:fb-stock-drop-bad)의 기준선인 110달러와의 주가 차이만 나타냅니다.

(ref:fb-stock-drop-bad) 2016년 10월 22일부터 2017년 1월 21일까지 페이스북(FB) 주가. 이 그림은 2016년 11월 1일경 페이스북 주가가 폭락했음을 암시하는 것처럼 보입니다. 그러나 *y* 축이 0달러가 아닌 110달러에서 시작하기 때문에 이는 오해의 소지가 있습니다.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/fb-stock-drop-bad-1.png" alt="(ref:fb-stock-drop-bad)" width="576" />
<p class="caption">(\#fig:fb-stock-drop-bad)(ref:fb-stock-drop-bad)</p>
</div>

(ref:fb-stock-drop-good) 2016년 10월 22일부터 2017년 1월 21일까지 페이스북(FB) 주가. 주가를 0달러에서 150달러까지의 *y* 눈금으로 표시함으로써 이 그림은 2016년 11월 1일경 FB 주가 하락의 크기를 더 정확하게 전달합니다.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/fb-stock-drop-good-1.png" alt="(ref:fb-stock-drop-good)" width="576" />
<p class="caption">(\#fig:fb-stock-drop-good)(ref:fb-stock-drop-good)</p>
</div>

그림 \@ref(fig:hawaii-income-bars-good)과 그림 \@ref(fig:fb-stock-drop-good)의 예는 항상 0에서 시작하는 전체 막대나 영역을 그려야 하므로 막대나 음영 영역이 시간 경과에 따른 작은 변화나 조건 간의 차이를 나타내는 데 유용하지 않음을 시사할 수 있습니다. 그러나 이것은 사실이 아닙니다. 어떤 차이를 보여주는지 명시하는 한 조건 간의 차이를 표시하기 위해 막대나 음영 영역을 사용하는 것은 완벽하게 유효합니다. 예를 들어 막대를 사용하여 2010년부터 2015년까지 하와이 카운티의 중간 소득 변화를 시각화할 수 있습니다(그림 \@ref(fig:hawaii-income-change)). 칼라와오를 제외한 모든 카운티의 경우 이 변화는 5,000달러 미만입니다. (칼라와오는 주민 수가 100명 미만인 특이한 카운티이며 소수의 사람들이 카운티로 이사하거나 이사하여 중간 소득이 크게 변동될 수 있습니다.) 그리고 하와이 카운티의 경우 변화는 음수입니다. 즉, 2015년 중간 소득은 2010년보다 낮았습니다. 음수 값은 반대 방향으로 가는 막대, 즉 0에서 위로가 아니라 아래로 확장되는 막대를 그려 나타냅니다.

(ref:hawaii-income-change) 2010년부터 2015년까지 하와이 카운티의 중간 소득 변화. 데이터 출처: 2010년 및 2015년 5개년 미국 지역사회 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/hawaii-income-change-1.png" alt="(ref:hawaii-income-change)" width="576" />
<p class="caption">(\#fig:hawaii-income-change)(ref:hawaii-income-change)</p>
</div>

마찬가지로 2016년 10월 22일의 일시적인 고점과의 차이로 페이스북 주가의 시간 경과에 따른 변화를 그릴 수 있습니다(그림 \@ref(fig:fb-stock-drop-inverse)). 고점에서의 거리를 나타내는 영역을 음영 처리함으로써 주가 총액에 대한 주가 하락의 크기에 대한 암묵적인 진술 없이 주가 하락의 절대적인 크기를 정확하게 나타냅니다.

(ref:fb-stock-drop-inverse) 2016년 10월 22일 가격 대비 페이스북(FB) 주가 손실. 2016년 11월 1일부터 2017년 1월 1일까지 가격은 2016년 10월 22일 고점보다 약 15달러 낮게 유지되었습니다. 그러나 2017년 1월에 가격이 회복되기 시작했습니다.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/fb-stock-drop-inverse-1.png" alt="(ref:fb-stock-drop-inverse)" width="576" />
<p class="caption">(\#fig:fb-stock-drop-inverse)(ref:fb-stock-drop-inverse)</p>
</div>

## 로그 축을 따른 시각화

선형 눈금으로 데이터를 시각화할 때 막대, 사각형 또는 기타 모양의 면적은 자동으로 데이터 값에 비례합니다. 로그 눈금을 사용하는 경우에는 그렇지 않은데, 데이터 값이 축을 따라 선형적으로 간격을 두지 않기 때문입니다. 따라서 예를 들어 로그 눈금의 막대 그래프는 본질적으로 결함이 있다고 주장할 수 있습니다. 반면에 각 막대의 면적은 데이터 값의 로그에 비례하므로 로그 눈금의 막대 그래프는 로그 변환된 좌표에서 비례 잉크의 원칙을 충족합니다. 실제로 이러한 두 주장 중 어느 것도 로그 눈금 막대 그래프가 적절한지 여부를 해결할 수 없다고 생각합니다. 대신 관련 질문은 양을 시각화할 것인지 아니면 비율을 시각화할 것인지입니다.

챕터 \@ref(coordinate-systems-axes)에서는 로그 눈금이 비율을 시각화하는 자연스러운 눈금이라고 설명했습니다. 로그 눈금을 따라 한 단위 이동하면 상수 계수를 곱하거나 나누는 것에 해당하기 때문입니다. 그러나 실제로 로그 눈금은 비율을 시각화하기 위해 특별히 사용되는 것이 아니라 표시된 숫자가 여러 자릿수에 걸쳐 변하기 때문에 사용되는 경우가 많습니다. 예를 들어 오세아니아 국가의 국내 총생산(GDP)을 생각해 보십시오. 2007년에 이러한 GDP는 10억 미국 달러(USD) 미만에서 3,000억 USD 이상까지 다양했습니다(그림 \@ref(fig:oceania-gdp-logbars)). 이러한 숫자를 선형 눈금으로 시각화하는 것은 GDP가 가장 큰 두 국가(뉴질랜드와 호주)가 그림을 지배하기 때문에 작동하지 않습니다.

(ref:oceania-gdp-logbars) 2007년 오세아니아 국가의 GDP. 막대의 길이는 막대가 임의의 값인 3억 달러에서 시작하므로 표시된 데이터 값을 정확하게 반영하지 않습니다. 데이터 출처: 갭마인더.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/oceania-gdp-logbars-1.png" alt="(ref:oceania-gdp-logbars)" width="576" />
<p class="caption">(\#fig:oceania-gdp-logbars)(ref:oceania-gdp-logbars)</p>
</div>

그러나 로그 눈금의 막대가 있는 시각화(그림 \@ref(fig:oceania-gdp-logbars))도 작동하지 않습니다. 막대는 임의의 값인 3억 달러에서 시작하며 최소한 그림은 그림 \@ref(fig:hawaii-income-bars-bad)과 동일한 문제, 즉 막대 길이가 데이터 값을 나타내지 않는다는 문제를 겪습니다. 그러나 로그 눈금의 추가적인 어려움은 막대가 0에서 시작하도록 할 수 없다는 것입니다. 그림 \@ref(fig:oceania-gdp-logbars)에서 값 0은 왼쪽으로 무한히 멀리 떨어져 있습니다. 따라서 막대의 원점을 점점 더 멀리 밀어내어 막대를 임의로 길게 만들 수 있습니다(예: 그림 \@ref(fig:oceania-gdp-logbars-long) 참조). 이 문제는 GDP 값인 양을 로그 눈금으로 시각화하려고 할 때 항상 발생합니다.

(ref:oceania-gdp-logbars-long) 2007년 오세아니아 국가의 GDP. 막대의 길이는 막대가 임의의 값인 10<sup>-9</sup>억 달러에서 시작하므로 표시된 데이터 값을 정확하게 반영하지 않습니다. 데이터 출처: 갭마인더.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/oceania-gdp-logbars-long-1.png" alt="(ref:oceania-gdp-logbars-long)" width="576" />
<p class="caption">(\#fig:oceania-gdp-logbars-long)(ref:oceania-gdp-logbars-long)</p>
</div>

그림 \@ref(fig:oceania-gdp-logbars)의 데이터의 경우 막대가 부적절하다고 생각합니다. 대신 각 국가의 GDP에 대해 눈금을 따라 적절한 위치에 점을 간단히 배치하고 막대 길이 문제를 완전히 피할 수 있습니다(그림 \@ref(fig:oceania-gdp-dots)). 중요하게도 *y* 축을 따라가 아니라 점 바로 옆에 국가 이름을 배치함으로써 국가 이름에서 점까지의 거리로 전달되는 크기의 시각적 인식을 피합니다.

(ref:oceania-gdp-dots) 2007년 오세아니아 국가의 GDP. 데이터 출처: 갭마인더.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/oceania-gdp-dots-1.png" alt="(ref:oceania-gdp-dots)" width="576" />
<p class="caption">(\#fig:oceania-gdp-dots)(ref:oceania-gdp-dots)</p>
</div>

그러나 양이 아닌 비율을 시각화하려는 경우 로그 눈금의 막대는 완벽하게 좋은 옵션입니다. 실제로 이 경우 선형 눈금의 막대보다 선호됩니다. 예를 들어 파푸아뉴기니의 GDP에 대한 오세아니아 국가의 GDP 값을 시각화해 보겠습니다. 결과 그림은 여러 국가의 GDP 간의 주요 관계를 잘 강조합니다(그림 \@ref(fig:oceania-gdp-relative)). 뉴질랜드는 파푸아뉴기니 GDP의 8배 이상이고 호주는 64배 이상인 반면 통가와 미크로네시아 연방은 파푸아뉴기니 GDP의 16분의 1 미만임을 알 수 있습니다. 프랑스령 폴리네시아와 뉴칼레도니아는 가깝지만 파푸아뉴기니보다 GDP가 약간 작습니다.

(ref:oceania-gdp-relative) 파푸아뉴기니 GDP 대비 2007년 오세아니아 국가 GDP. 데이터 출처: 갭마인더.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/oceania-gdp-relative-1.png" alt="(ref:oceania-gdp-relative)" width="576" />
<p class="caption">(\#fig:oceania-gdp-relative)(ref:oceania-gdp-relative)</p>
</div>

그림 \@ref(fig:oceania-gdp-relative)은 또한 로그 눈금의 자연스러운 중간점이 1이며 1보다 큰 숫자를 나타내는 막대는 한 방향으로 가고 1보다 작은 숫자를 나타내는 막대는 다른 방향으로 간다는 것을 강조합니다. 로그 눈금의 막대는 비율을 나타내며 항상 1에서 시작해야 하고 선형 눈금의 막대는 양을 나타내며 항상 0에서 시작해야 합니다.

<div class="rmdtip">
<p>로그 눈금에 막대를 그릴 때 비율을 나타내며 0이 아닌 1에서 시작하여 그려야 합니다.</p>
</div>

## 직접 면적 시각화

이전의 모든 예는 데이터를 하나의 선형 차원을 따라 시각화하여 데이터 값이 면적과 *x* 또는 *y* 축을 따른 위치 모두에 의해 인코딩되도록 했습니다. 이러한 경우 면적 인코딩은 데이터 값의 위치 인코딩에 부수적이고 이차적인 것으로 간주할 수 있습니다. 그러나 다른 시각화 접근 방식은 해당 위치 매핑 없이 주로 또는 직접 면적으로 데이터 값을 나타냅니다. 가장 일반적인 것은 원형 차트입니다(그림 \@ref(fig:RI-pop-pie)). 기술적으로 데이터 값은 각도에 매핑되고 원형 축을 따른 위치로 표시되지만 실제로는 일반적으로 원형 차트의 각도를 판단하지 않습니다. 대신 우리가 알아차리는 지배적인 시각적 속성은 각 파이 조각 영역의 크기입니다.

(ref:RI-pop-pie) 로드아일랜드 카운티의 주민 수를 원형 차트로 표시했습니다. 각 파이 조각의 각도와 면적은 해당 카운티의 주민 수에 비례합니다. 데이터 출처: 2010년 미국 인구 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/RI-pop-pie-1.png" alt="(ref:RI-pop-pie)" width="576" />
<p class="caption">(\#fig:RI-pop-pie)(ref:RI-pop-pie)</p>
</div>

각 파이 조각의 면적은 각도에 비례하고 각도는 조각이 나타내는 데이터 값에 비례하므로 원형 차트는 비례 잉크의 원칙을 충족합니다. 그러나 원형 차트의 면적은 막대 그래프의 동일한 면적과 다르게 인식됩니다. 근본적인 이유는 인간의 인식이 주로 면적이 아닌 거리를 판단하기 때문입니다. 따라서 데이터 값이 막대의 길이와 같이 거리로 완전히 인코딩되는 경우 데이터 값이 두 개 이상의 거리가 결합되어 면적을 만드는 경우보다 더 정확하게 인식됩니다. 이러한 차이를 보려면 그림 \@ref(fig:RI-pop-pie)를 그림 \@ref(fig:RI-pop-bars)와 비교하십시오. 그림 \@ref(fig:RI-pop-bars)는 동일한 데이터를 막대로 보여줍니다. 프로비던스 카운티와 다른 카운티 간의 주민 수 차이는 그림 \@ref(fig:RI-pop-pie)보다 그림 \@ref(fig:RI-pop-bars)에서 더 크게 나타납니다.

(ref:RI-pop-bars) 로드아일랜드 카운티의 주민 수를 막대로 표시했습니다. 각 막대의 길이는 해당 카운티의 주민 수에 비례합니다. 데이터 출처: 2010년 미국 인구 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/RI-pop-bars-1.png" alt="(ref:RI-pop-bars)" width="528" />
<p class="caption">(\#fig:RI-pop-bars)(ref:RI-pop-bars)</p>
</div>

인간의 인식이 면적보다 거리를 더 잘 판단한다는 문제는 원형 차트의 정사각형 버전으로 생각할 수 있는 트리맵(그림 \@ref(fig:RI-pop-treemap))에서도 발생합니다. 다시 말하지만 그림 \@ref(fig:RI-pop-bars)와 비교하여 카운티 간 주민 수의 차이는 그림 \@ref(fig:RI-pop-treemap)에서 덜 두드러지게 나타납니다.

(ref:RI-pop-treemap) 로드아일랜드 카운티의 주민 수를 트리맵으로 표시했습니다. 각 사각형의 면적은 해당 카운티의 주민 수에 비례합니다. 데이터 출처: 2010년 미국 인구 조사.

<div class="figure" style="text-align: center">
<img src="proportional_ink_files/figure-html/RI-pop-treemap-1.png" alt="(ref:RI-pop-treemap)" width="432" />
<p class="caption">(\#fig:RI-pop-treemap)(ref:RI-pop-treemap)</p>
</div>
