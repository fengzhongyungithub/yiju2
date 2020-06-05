package cn.beizhen.entity;

import java.util.List;



public class HousePage<T> {
	
	// 真正要查看的数据
		private List<T> usersList;
		
		// 总记录数【查询数据库】
		private Integer totalRecord;
		
		// 每页显示的条数
		private Integer pageSize =6;
		
		// 总页数
		private Integer totalPage;
		
		// 当前页
		private Integer currentPage;
		
		// limit子句的第一个参数的值
		private Integer limitStart;
		
		//  指定每页页面只显式10个页码
		private final Integer MAX_PAGE_NO = 10;
		
		// 指定jsp页面的开始显示的页码
		private Integer pageStartNo;
		
		// 指定jsp页面结束的页码
		private Integer pageEndNo;
		
		public HousePage(Integer totalRecord,Integer currentPage){
			
			// 总记录数
			this.totalRecord = totalRecord;
			
			// 当前的页码【当前第几页】
			this.currentPage = currentPage;
			
			// 总页数
			if(this.totalRecord % this.pageSize == 0){
				this.totalPage = this.totalRecord / this.pageSize;
			}else{
				this.totalPage = this.totalRecord / this.pageSize + 1;
			}
			
			// limit的计算
			this.limitStart = (this.currentPage - 1) * pageSize;
		
		
			//----------------------------扩充：模拟百度效果----------------
			
			/***
			 * 		指定每页显示的页码是10个页码
			 * 			a. 总页数[8] < 10
			 * 					pageStartNo = 1
			 * 					pageEndNo = 总页数[8]
			 *			b. 总页数[24] > 10
			 *					跟当前页有关系
			 *						当前页 = 23
			 *					pageStartNo = 当前页 - 5
			 *					pageEndNo = 当前页 + 4
			 *					
			*/
			if(this.totalPage <= this.MAX_PAGE_NO){
				this.pageStartNo = 1;
				this.pageEndNo = this.totalPage;
			}else{
				
				this.pageStartNo = this.currentPage - 5;
				this.pageEndNo = this.currentPage + 4;
				
				// 24页码   
				if(this.pageEndNo > this.totalPage){
					this.pageEndNo = this.totalPage;
					this.pageStartNo = this.totalPage - 9;
				}
				
				if(this.pageStartNo < 1){
					// 24      1 2   3
					this.pageStartNo = 1;
					this.pageEndNo = this.MAX_PAGE_NO;
				}
				
			}
		}

		public List<T> getUsersList() {
			return usersList;
		}

		public void setUsersList(List<T> usersList) {
			this.usersList = usersList;
		}

		public Integer getPageStartNo() {
			return pageStartNo;
		}

		public void setPageStartNo(Integer pageStartNo) {
			this.pageStartNo = pageStartNo;
		}

		public Integer getPageEndNo() {
			return pageEndNo;
		}

		public void setPageEndNo(Integer pageEndNo) {
			this.pageEndNo = pageEndNo;
		}

		public Integer getTotalRecord() {
			return totalRecord;
		}

		public void setTotalRecord(Integer totalRecord) {
			this.totalRecord = totalRecord;
		}

		public Integer getPageSize() {
			return pageSize;
		}

		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}

		public Integer getTotalPage() {
			return totalPage;
		}

		public void setTotalPage(Integer totalPage) {
			this.totalPage = totalPage;
		}

		public Integer getCurrentPage() {
			return currentPage;
		}

		public void setCurrentPage(Integer currentPage) {
			this.currentPage = currentPage;
		}

		public Integer getLimitStart() {
			return limitStart;
		}

		public void setLimitStart(Integer limitStart) {
			this.limitStart = limitStart;
		}
		
		

	

}
