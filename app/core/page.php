<?php

/*
 * sutoocms: core/page.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 * @author: phpox
 * @version: v1.0 u20120724
 */

if (! defined ( 'SUTOOCMS' ))
	exit ( 'Can\'t Access !' );
class core_page {
	var $infocount;
	var $pagecount;
	var $items;
	var $pageno;
	var $start;
	var $next;
	var $prev;
	var $maxpages;
	var $limit;
	public function __construct($infocount, $items, $pageno) {
		$this->infocount = $infocount;
		$this->items = $items;
		$this->pageno = $pageno;
		$this->pagecount = $this->getpagecount ();
		$this->justpageno ();
		$this->start = $this->getstart ();
		$this->gotoprev ();
		$this->gotonext ();
		$this->limit = $this->start . ',' . $this->items;
	}
	private function justpageno() {
		if (empty ( $this->pageno ) || $this->pageno < 1) {
			$this->pageno = 1;
		}
		if ($this->pageno > $this->pagecount) {
			$this->pageno = $this->pagecount;
		}
	}
	private function gotonext() {
		$next = $this->pageno + 1;
		if ($next > $this->pagecount) {
			$this->next = $this->pagecount;
		} else {
			$this->next = $next;
		}
	}
	private function gotoprev() {
		$prev = $this->pageno - 1;
		if ($prev < 1) {
			$this->prev = 1;
		} else {
			$this->prev = $prev;
		}
	}
	private function getpagecount() {
		return ceil ( $this->infocount / $this->items );
	}
	private function getstart() {
		if ($this->pageno <= 1) {
			return 0;
		} else {
			return ($this->pageno - 1) * $this->items;
		}
	}
	public function showpage($url) {
		$url .= strpos ( $url, '?' ) !== false ? '&' : '?';
		$out = '';
		$out .= "每页显示{$this->items}条信息 ";
		$out .= "当前页<strong><font color=\"#FF0000\">{$this->pageno}</font>/{$this->pagecount}</strong> ";
		$out .= "共有{$this->infocount}条信息 ";
		$out .= "<a href='{$url}p=1'>首页</a> ";
		$out .= "<a href='{$url}p={$this->prev}'>上一页</a> ";
		$out .= "<a href='{$url}p={$this->next}'>下一页</a> ";
		$out .= "<a href='{$url}p={$this->pagecount}'>尾页</a> ";
		$out .= "跳转到:";
		$out .= "<input name=\"p\" type=\"text\" value=\"{$this->pageno}\" onkeyup=\"if(event.keyCode == 13) window.location.href = '{$url}p='+this.value;\" size=\"6\" />";
		return $out;
	}
	public function multi($mpurl, $page = 6) {
		$multipage = '<div class="pagination">';
		$mpurl .= strpos ( $mpurl, '?' ) !== false ? '&' : '?';
		$realpages = 1;
		$offset = 2;
		$realpages = @ceil ( $this->infocount / $this->items );
		$pages = $this->maxpages && $this->maxpages < $realpages ? $this->maxpages : $realpages;
		if ($page > $pages) {
			$from = 1;
			$to = $pages;
		} else {
			$from = $this->pageno - $offset;
			$to = $from + $page - 1;
			if ($from < 1) {
				$to = $this->pageno + 1 - $from;
				$from = 1;
				if ($to - $from < $page) {
					$to = $page;
				}
			} elseif ($to > $pages) {
				$from = $pages - $page + 1;
				$to = $pages;
			}
		}
		$multipage .= ' <a href="' . $mpurl . 'pageno=1" title="'.lang('首页').'">&laquo; '.lang('首页').'</a> ';
		$multipage .= ' <a href="' . $mpurl . 'pageno=' . $this->prev . '" title="'.lang('上一页').'">&laquo; '.lang('上一页').'</a> ';
		if ($this->pageno - $offset > 1 && $pages > $page) {
			$multipage .= '<a href="' . $mpurl . 'pageno=1" class="number">1</a><b>...</b>';
		}
		for($i = $from; $i <= $to; $i ++) {
			if ($i == $this->pageno) {
				$multipage .= '<a href="' . $mpurl . 'pageno=' . $i . '" class="number current" title="' . $i . '">' . $i . '</a>';
			} else {
				$multipage .= '<a href="' . $mpurl . 'pageno=' . $i . '" class="number" title="' . $i . '">' . $i . '</a>';
			}
		}
		if ($to < $pages) {
			$multipage .= '<b>...</b><a href="' . $mpurl . 'pageno=' . $pages . '" class="number">' . $realpages . '</a>';
		}
		$multipage .= ' <a href="' . $mpurl . 'pageno=' . $this->next . '" title="'.lang('下一页').'">'.lang('下一页').' &raquo;</a> ';
		$multipage .= ' <a href="' . $mpurl . 'pageno=' . $pages . '" title="'.lang('尾页').'">'.lang('尾页').' &raquo;</a> ';
		$multipage .= "</div>";
		return $multipage;
	}
}