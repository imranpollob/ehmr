@if ($paginator->hasPages())
<div class="text-xs-center mb-3">
    <ul class="pagination">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="page-item disabled">
                <span class="page-link">
                    <span aria-hidden="true">&laquo; Prev</span>
                    <span class="sr-only">Previous</span>    
                </span>
            </li>
        @else
            <li class="page-item">
                <a href="{{ $paginator->previousPageUrl() }}" rel="prev" class="page-link" aria-label="Previous">
                    <span aria-hidden="true">&laquo; Prev</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="page-item disabled"><span class="page-link">{{ $element }}</span></li>
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
                    @else
                        <li class="page-item"><a href="{{ $url }}" class="page-link">{{ $page }}</a></li>
                    @endif
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li class="page-item">
                <a href="{{ $paginator->nextPageUrl() }}" rel="next" class="page-link" aria-label="Next">
                    <span aria-hidden="true">Next &raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        @else
            <li class="page-item disabled"><span class="page-link">
                <span aria-hidden="true">Next &raquo;</span>
                <span class="sr-only">Next</span></span>
            </li>
        @endif
    </ul>
</div>
@endif
<!-- <ul class="pagination">
    <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo; Prev</span>
            <span class="sr-only">Previous</span>
        </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active"><a class="page-link" href="#">3</a></li>

    <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">Next &raquo;</span>
            <span class="sr-only">Next</span>
        </a>
    </li>
</ul> -->
